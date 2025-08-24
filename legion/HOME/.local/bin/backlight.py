#!/usr/bin/env python
import argparse
from pathlib import Path

try:
    import dbus
except ImportError:
    dbus = None


class Backlight:
    @classmethod
    def backlights(cls):
        return [cls(path) for path in Path("/sys/class/backlight/").iterdir()]

    def __init__(self, path):
        self.path = Path(path)
        self._max_brightness = None

    def increase(self, perc):
        self.brightness = self.brightness + perc

    def decrease(self, perc):
        self.brightness = self.brightness - perc

    @property
    def brightness(self):
        return int(((self.raw_brightness / self.max_brightness) * 100))

    @brightness.setter
    def brightness(self, perc):
        self.raw_brightness = int((perc / 100) * self.max_brightness)

    @property
    def raw_brightness(self):
        with open(self.path / "brightness", "r", encoding="utf-8") as f:
            return int(f.read())

    @raw_brightness.setter
    def raw_brightness(self, value):
        with open(self.path / "brightness", "w", encoding="utf-8") as f:
            f.write(f"{sorted((0, int(value), self.max_brightness))[1]}")

    @property
    def max_brightness(self):
        if self._max_brightness is None:
            with open(self.path / "max_brightness", "r", encoding="utf-8") as f:
                self._max_brightness = int(f.read())
        return self._max_brightness


def parse_arguments():
    parser = argparse.ArgumentParser(
        description="Control brightness via /sys/class/backlight/"
    )

    parser.add_argument(
        "--backlight",
        help="path to the backlight directory",
        nargs="*",
        type=Backlight,
    )

    group = parser.add_mutually_exclusive_group()
    group.add_argument("--inc", nargs="?", type=int, const=10, default=None)
    group.add_argument("--dec", nargs="?", type=int, const=10, default=None)
    group.add_argument("--set", type=int, default=None)
    group.add_argument("--get", action="store_true")
    group.add_argument("--set-raw", type=int, default=None)
    group.add_argument("--get-raw", action="store_true")
    group.add_argument("--list", action="store_true")

    return parser.parse_args()


def main():
    args = parse_arguments()

    backlights = args.backlight or Backlight.backlights()

    if dbus:
        item = "org.freedesktop.Notifications"

        notfy_intf = dbus.Interface(
            dbus.SessionBus().get_object(item, "/" + item.replace(".", "/")), item
        )

    for backlight in backlights:
        if args.inc is not None:
            backlight.increase(args.inc)
        elif args.dec is not None:
            backlight.decrease(args.dec)
        elif args.set is not None:
            backlight.brightness = args.set
        elif args.get is True:
            print(f"{backlight.path}: {backlight.brightness}%")
        elif args.set_raw is not None:
            backlight.raw_brightness = args.set_raw
        elif args.get_raw is True:
            print(f"{backlight.path}: {backlight.raw_brightness}")
        elif args.list is True:
            print(backlight.path)

        if dbus:
            notfy_intf.Notify(
                __name__,
                16384,
                "display-brightness-symbolic",
                f"Brightness {backlight.brightness}",
                "",
                [],
                {"value": backlight.brightness},
                2000,
            )


if __name__ == "__main__":
    main()

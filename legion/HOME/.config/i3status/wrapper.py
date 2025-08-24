#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 2012 Valentin Haenel <valentin.haenel@gmx.de>
# 2021 Peter Zueger <zueger.peter@icloud.com>
import json
import re
import subprocess
import sys
import time


def cache_function_for(t=60):
    cache = {}

    def inner(function):
        def wrapper(*args):
            h = hash(args)
            if h in cache and cache[h].get("valid_until") >= time.time():
                return cache[h].get("value")
            rv = function(*args)
            cache[h] = {"value": rv, "valid_until": time.time() + t}
            return rv

        return wrapper

    return inner


def get_stdout(args):
    try:
        return subprocess.run(
            args, capture_output=True, timeout=0.1, check=True
        ).stdout.decode()
    except (subprocess.CalledProcessError, subprocess.TimeoutExpired):
        return ""


def get_wg_interfaces():
    """Get Wireguard interfaces."""
    return get_stdout(["wg", "show", "interfaces"]).strip()


@cache_function_for(t=5)
def wireguard():
    interfaces = get_wg_interfaces()
    if interfaces:
        return {"full_text": "WG: {}".format(interfaces), "name": "wg"}
    return {"full_text": "", "name": "wg"}


btctl_re = re.compile(r"(?:Powered:)\s+(.*)")


def get_bluetooth_status():
    """Get Bluetooth status."""
    return "yes" in btctl_re.findall(get_stdout(["bluetoothctl", "show"]))


@cache_function_for(t=5)
def bluetooth():
    if get_bluetooth_status():
        return {"full_text": "B: up", "name": "Bluetooth", "color": "#00FF00"}
    return {"full_text": "B: down", "name": "Bluetooth", "color": "#FF0000"}


def get_cmus_remote():
    info = {"tag": {}, "set": {}}
    for line in get_stdout(["cmus-remote", "-Q"]).splitlines():
        if line == "cmus-remote: cmus is not running":
            break

        if line.startswith(("status", "duration", "position", "file")):
            tag, val = line.split(" ", 1)
            info[tag] = val
        elif line.startswith(("tag", "set")):
            kind, tag, val = line.split(" ", 2)
            info[kind][tag] = val
    return info


@cache_function_for(t=5)
def cmus():
    remote = get_cmus_remote()
    if status := remote.get("status"):
        if status == "playing":
            return {
                "full_text": f'cmus: {remote["tag"].get("title", "no song")}',
                "name": "cmus",
            }
        return {"full_text": f"cmus: {status}", "name": "cmus"}
    return {"full_text": "", "name": "cmus"}


def print_line(message):
    """Non-buffered printing to stdout."""
    sys.stdout.write(message + "\n")
    sys.stdout.flush()


def read_line():
    """Interrupted respecting reader for stdin."""
    # try reading a line, removing any extra whitespace
    try:
        line = sys.stdin.readline().strip()
        # i3status sends EOF, or an empty line
        if not line:
            sys.exit(3)
        return line
    # exit on ctrl-c
    except KeyboardInterrupt:
        sys.exit()


def main():
    # Skip the first line which contains the version header.
    print_line(read_line())

    # The second line contains the start of the infinite array.
    print_line(read_line())

    while True:
        line, prefix = read_line(), ""
        # ignore comma at start of lines
        if line.startswith(","):
            line, prefix = line[1:], ","

        j = json.loads(line)

        j.insert(0, bluetooth())
        j.insert(0, wireguard())
        j.insert(5, cmus())

        print_line(prefix + json.dumps(j))


if __name__ == "__main__":
    main()

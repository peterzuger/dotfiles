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


def get_wg_interfaces():
    """ Get Wireguard interfaces. """
    result = subprocess.run(["wg", "show", "interfaces"], stdout=subprocess.PIPE)
    return result.stdout.decode("utf-8").strip()


@cache_function_for(t=10)
def wireguard():
    return {"full_text": get_wg_interfaces(), "name": "wg"}


btctl_re = re.compile(r"(?:Powered:)\s+(.*)")


def get_bluetooth_status():
    """ Get Bluetooth status. """
    result = subprocess.run(["bluetoothctl", "show"], stdout=subprocess.PIPE)
    return "yes" in btctl_re.findall(result.stdout.decode("utf-8"))


@cache_function_for(t=10)
def bluetooth():
    if get_bluetooth_status():
        return {"full_text": "B: up", "name": "Bluetooth", "color": "#00FF00"}
    return {"full_text": "B: down", "name": "Bluetooth", "color": "#FF0000"}


def print_line(message):
    """ Non-buffered printing to stdout. """
    sys.stdout.write(message + "\n")
    sys.stdout.flush()


def read_line():
    """ Interrupted respecting reader for stdin. """
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

        j.insert(2, bluetooth())
        j.insert(0, wireguard())

        print_line(prefix + json.dumps(j))


if __name__ == "__main__":
    main()

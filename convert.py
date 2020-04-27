#! /usr/bin/env python3
import re
import argparse
from pprint import pprint

regex = re.compile(r"(([0-1][0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9]))")


def convert_timelines(filename: str):
    with open(filename, 'r') as timecodes, \
         open(filename + '.out', 'w') as timecodes_out:
        result = ['<ul class="timecoder">', '\n']
        for line in timecodes:
            if line not in ['\n', '\r\n', '\r']:
                result.append("  " + "<li>" +
                              regex.sub(r'<a class="timecode">\1</a>',
                                        line.lstrip("- ").rstrip("\n")) +
                              "</li>" + "\n")
        result.append('</ul>')
        print(''.join(result))
        timecodes_out.write(''.join(result))

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-f", "--files", help="Timeline files to be converted",
                        nargs="+", required=True)
    args = parser.parse_args()
    for filename in args.files:
        convert_timelines(filename)


main()

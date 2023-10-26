#!/usr/bin/env python3

import subprocess
from contextlib import redirect_stdout

output = subprocess.check_output(['brotab', 'text'])


def is_firefox_running():
    status = subprocess.run(['ps', '-C', 'firefox'], stdout=subprocess.PIPE)
    if status.stdout.decode('utf-8').count('\n') >= 2:
        print("indexing tabs")
        return True
    print("not indexing tabs")
    return False


def trim_or_pad(string, max_size, placeholder):
    string = string.strip()
    if len(string.encode('utf-8')) > max_size:
        return string[:max_size]
    else:
        return string.ljust(max_size, placeholder)


def __main__():
    if is_firefox_running():
        with open('/home/hq1/.cache/tofi-brotab', 'w') as f:
            with redirect_stdout(f):
                for line in output.splitlines():
                    # split by \t
                    columns = line.decode('utf-8').split('\t')
                    print(trim_or_pad(columns[1], 45, " "), end='   ')
                    print(trim_or_pad(columns[2], 40, " "), end='   ')
                    print(columns[2], end='  ')
                    print(trim_or_pad(columns[3], 80, " "), end='\t')
                    print(columns[0])


if __name__ == "__main__":
    __main__()

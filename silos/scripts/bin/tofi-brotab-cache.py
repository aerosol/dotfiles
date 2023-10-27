#!/usr/bin/env python3

import subprocess
from contextlib import redirect_stdout


def is_firefox_running():
    status = subprocess.run(['ps', '-C', 'firefox'], stdout=subprocess.PIPE)
    return status.stdout.decode('utf-8').count('\n') >= 2


def trim_or_pad(string, max_size, placeholder):
    string = string.strip()
    if len(string.encode('utf-8')) > max_size:
        return string[:max_size]
    else:
        return string.ljust(max_size, placeholder)


def active_tabs():
    output = subprocess.check_output(['brotab', 'active'])
    return list(map(lambda x: x.split('\t')[0],
                    output.decode('utf-8').splitlines()))


def strip_html(string):
    return ''.join(e for e in string if e.isalnum() or e in [' ', '-', '_', '$'])


def __main__():
    if is_firefox_running():
        output = subprocess.check_output(['brotab', 'text'])
        tab_count = 0

        active = active_tabs()
        with open('/home/hq1/.cache/tofi-brotab', 'w') as f:
            with redirect_stdout(f):
                for line in output.decode('utf-8').splitlines():
                    columns = line.split('\t')
                    if columns[0] in active:
                        print("[F]", end=' ')
                    else:
                        print("   ", end=' ')

                    print(trim_or_pad(columns[1].strip(), 50, " "), end='  ')
                    print(columns[2].strip(), end='  ')
                    print(
                        f'\r{trim_or_pad("", 56, " ")}'
                        f'{columns[1].strip()} '
                        f'{strip_html(columns[3][:15000])} {columns[1]}', end='\t')
                    print(f'{columns[0]}')
                    tab_count += 1
        print("🦊", tab_count)
    else:
        print("🦗")


if __name__ == "__main__":
    __main__()

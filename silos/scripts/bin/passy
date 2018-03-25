#!/usr/bin/env python
import hmac
import string
import getpass
import sys
import itertools
from hashlib import sha1

__author__ = "Adam Rutkowski, adam@mtod.org"

"""
Do not store passwords - generate them when needed.
(http://news.ycombinator.com/item?id=2430808)

usage:

OSX:
    alias p='passy.py | pbcopy'

Linux:
    alias p='passy.py | xsel --clipboard --input'
    alias p='passy.py | xclip -selection clipboard'
"""


def get_chars(key):
    """Prepare a set of characters to build passwords with"""

    charset = "".join([string.ascii_letters, string.digits,
                       string.punctuation])
    nums = map(int, filter(lambda x: x.isdigit(), sha1(key[::-1]).hexdigest()))
    chars = ""
    index = 0
    for n in itertools.cycle(nums):
        index += n
        chars += charset[index % len(charset)]
        if len(set(chars)) == 32:
            return "".join(set(chars))
        if len(chars) > 256:
            return "".join(chars[:32])


def encode(domain, key):
    """Passy alogrithm by Stephen Waits as seen on
    https://bitbucket.org/swaits/passyweb"""

    chars = get_chars(key + domain)
    assert len(chars) == 32
    key = hmac.new(domain, key).hexdigest()
    key += sha1(key).hexdigest()
    recoded = map(lambda x: chars[ord(x) % 32], key.decode('hex'))
    password = ""
    pass_valid = [False] * 4

    for i, r_key in enumerate(recoded):
        password += r_key
        if r_key.isalpha():
            if r_key.isupper():
                pass_valid[0] = True
            else:
                pass_valid[1] = True
        elif r_key.isdigit():
            pass_valid[2] = True
        else:
            pass_valid[3] = True
        if (i >= 16 and all(pass_valid)):
            return password
    return password


if __name__ == '__main__':
    try:
        domain = sys.argv[1]
    except IndexError:
        sys.stderr.write("Argument required\n")
        sys.exit(1)
    key = getpass.getpass()
    sys.stdout.write(encode(domain, key))

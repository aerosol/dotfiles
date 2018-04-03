#!/bin/env bash

lock() {
  i3lock -n -u -c 000000 -i ~/Pictures/lock.png &
}

case "$1" in
  lock)
    lock
    ;;
  suspend)
    lock
    systemctl suspend
    ;;
  hibernate)
    lock
    systemctl hibernate
    ;;
  *)
    echo "Usage: $0 {lock|suspend|hibernate}"
    exit 2
esac

exit 0
    


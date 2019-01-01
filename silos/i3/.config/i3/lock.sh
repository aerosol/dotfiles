#!/bin/env bash

lock() {
  dm-tool lock
}

case "$1" in
  lock)
    lock
    ;;
  suspend)
    lock && systemctl suspend
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
    


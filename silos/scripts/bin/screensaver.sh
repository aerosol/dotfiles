#!/usr/bin/env bash
notify-send "Initializing screensaver"
xautolock -time 5 -locker lock.sh -notifier "notify-send 'locking' 'in 10 seconds'" -notify 10

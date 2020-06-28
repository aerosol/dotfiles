#!/usr/bin/env bash
while inotifywait -r -e modify,create,delete $HOME/Sync
do
    backblaze-b2 sync $HOME/Sync b2://hq1-sync/Sync >> $HOME/backblaze_sync.log
done


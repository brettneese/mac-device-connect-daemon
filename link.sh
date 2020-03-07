#!/usr/bin/zsh
set -x 

gcc -framework Foundation -o xpc_set_event_stream_handler xpc_set_event_stream_handler.m
chmod 755 ./sidecar-connect/sidecar-connect.sh
cp ./sidecar-connect/sidecar-connect.sh ~/bin/sidecar-connect/sidecar-connect.sh 
cp xpc_set_event_stream_handler ~/bin/sidecar-connect/xpc_set_event_stream_handler
cp sidecar-connect/com.sidecar-connect.plist ~/bin/sidecar-connect/com.sidecar-connect.plist
sudo chown root:wheel ~/bin/sidecar-connect/com.sidecar-connect.plist
sudo ln -s ~/bin/sidecar-connect/com.sidecar-connect.plist /Library/LaunchAgents/com.sidecar-connect.plist
launchctl load /Library/LaunchAgents/com.sidecar-connect.plist

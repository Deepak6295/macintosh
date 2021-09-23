/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -off -restart -agent -privs -all -allowAccessFor -allUsers
defaults write /var/db/launchd.db/com.apple.launchd/overrides.plist com.apple.screensharing -dict Disabled -bool false
launchctl unload -w /System/Library/LaunchDaemons/com.apple.screensharing.plist
launchctl load -w /System/Library/LaunchDaemons/com.apple.screensharing.plist

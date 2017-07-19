# source envsetup
echo Start envsetup.sh
. build/envsetup.sh

# breakfast
echo Preparing Device: armani
breakfast armani

# Make UNOFFICIAL
echo Set Build Type to OFFICIAL
export OWNROM_BUILDTYPE=OFFICIAL

# Setting out dir to SSD
#echo Setting out dir to SSD
#export OUT_DIR_COMMON_BASE=/home/owndroid/Bureaublad/OwnOUT

# Check breakfast again
echo Check OWNROM_VERSION= to be sure!
echo Check OUT_DIR= to be sure!
breakfast armani

# Turn on CCACHE
echo Turning on CCACHE
export USE_CCACHE=1

# Make the Stars Fall!
echo export I_WANT_A_QUAIL_STAR=true
export I_WANT_A_QUAIL_STAR=true

# fix jack server heap size error
echo Fixing jack server heap size error
export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx12g"
 
# restart jack to apply updates
echo Restartig jack server to apply updates! 
./prebuilts/sdk/tools/jack-admin kill-server
./prebuilts/sdk/tools/jack-admin start-server

echo Finished now make a damn build!!!

mka ownrom -j10
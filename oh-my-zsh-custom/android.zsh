# Requirement for building React Native apps (on OS X)
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
alias android_simulator="/Users/jnhuynh/Library/Android/sdk/tools/emulator -avd Samsung_Galaxy_Tab_A_SM-T350_8_tablet_API_23"

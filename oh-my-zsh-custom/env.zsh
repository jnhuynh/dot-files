ulimit -n 2560
eval "$(hub alias -s)"
export PATH=".bin:/Users/jnhuynh/.dot-files/bin:/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.pub-cache/bin"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# For yarn & node-gyp
export PYTHON=/usr/local/bin/python3

export REACT_EDITOR=vim

FLUTTER_HOME=~/Documents/flutter
export PATH=$FLUTTER_HOME/bin:$FLUTTER_HOME/.pub-cache/bin:$FLUTTER_HOME/bin/cache/dart-sdk/bin:$HOME/.pub-cache/bin:$PATH

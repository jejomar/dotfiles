# Simple script to copy all files that needed to be backed up.

PROJ_DIR=$(pwd)
CONFIG_DIR=$PROJ_DIR/config
LOCALSHARE_DIR=$PROJ_DIR/local/share
LOCALBIN_DIR=$PROJ_DIR/local/bin

SRC_CONFIG=$HOME/.config
SRC_LOCAL_APP=$HOME/.local/share/applications
SRC_LOCAL_BIN=$HOME/.local/bin

# Get configs from root of $HOME directory.
# If you want to add files, just add them using the --include option
cp -v $HOME/.bashrc $PROJ_DIR/bashrc

# Get folders that will be backed up

# rsync -av $SRC_CONFIG/cava $CONFIG_DIR/
# rsync -av $SRC_CONFIG/dunst $CONFIG_DIR/
# rsync -av $SRC_CONFIG/easyeffects $CONFIG_DIR/
rsync -av $SRC_CONFIG/hypr $CONFIG_DIR/
rsync -av $SRC_CONFIG/kitty $CONFIG_DIR/
# rsync -av $SRC_CONFIG/mpd $CONFIG_DIR/
# rsync -av $SRC_CONFIG/ncmpcpp $CONFIG_DIR/
# rsync -av $SRC_CONFIG/sddm $CONFIG_DIR/
# rsync -av $SRC_CONFIG/starship $CONFIG_DIR/
# rsync -av $SRC_CONFIG/swappy $CONFIG_DIR/
# rsync -av $SRC_CONFIG/tofi $CONFIG_DIR/
# rsync -av $SRC_CONFIG/vifm $CONFIG_DIR/
rsync -av $SRC_CONFIG/waybar $CONFIG_DIR/
# rsync -av $SRC_CONFIG/wlogout $CONFIG_DIR/
# rsync -av $HOME/.local/bin $LOCALBIN_DIR/
rsync -av $SRC_LOCAL_APP $LOCALSHARE_DIR/
rsync -av --exclude 'watch_later' $SRC_CONFIG/mpv $CONFIG_DIR/
rsync -av $SRC_CONFIG/nvim $CONFIG_DIR/

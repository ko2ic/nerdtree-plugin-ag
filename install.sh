#!/bin/sh

NERDTREE_PLUGIN_HOME="$HOME/.vim/bundle/nerdtree/nerdtree_plugin"
GIT_PROJECT_NAME='nerdtree-plugin-ag'

echo "install to $NERDTREE_PLUGIN_HOME."
mkdir -p $NERDTREE_PLUGIN_HOME/
cd $NERDTREE_PLUGIN_HOME
rm -rf $GIT_PROJECT_NAME 
git clone "git@github.com:ko2ic/$GIT_PROJECT_NAME.git"
mv ${GIT_PROJECT_NAME}/nerdtree-plugin/* "$NERDTREE_PLUGIN_HOME/"
rm -rf $GIT_PROJECT_NAME 
echo "installed."

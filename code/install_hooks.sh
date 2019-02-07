#!/bin/sh

#Aim: Create a symbolic link to the hooks scripts.

main(){

#Get the .git directory
GIT_DIR=$(git rev-parse --git-dir)

echo "Installing hooks..."

#1. Create symbolic link to the hooks library
ln -sf ../../hooksScripts/hooks_library.lib $GIT_DIR/hooks/hooks_library.lib

#2. Create symlink to repo pre-commit script
ln -sf ../../hooksScripts/pre-commit $GIT_DIR/hooks/pre-commit  

#3. Create symlink to repo prepare-commit-msg script
ln -sf ../../hooksScripts/prepare-commit-msg $GIT_DIR/hooks/prepare-commit-msg

  
#4. Create symlink to repo commit-msg script
ln -sf ../../hooksScripts/commit-msg $GIT_DIR/hooks/commit-msg

#5. Create symlink to repo post-commit script
ln -sf ../../hooksScripts/post-commit $GIT_DIR/hooks/post-commit

#5. Create symlink to repo pre-rebase script
ln -sf ../../hooksScripts/pre-rebase $GIT_DIR/hooks/pre-rebase

echo "Done!"  



exit 0;
}

main $@

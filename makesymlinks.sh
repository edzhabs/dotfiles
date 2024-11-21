#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the ~/.config directory to any desired dotfiles in ~/dotfiles/.config
############################

########## Variables

dotfiles_dir=~/dotfiles/.config                             # dotfiles config directory
backup_dir=~/dotfiles_old/.config                           # old config backup directory
folders="fastfetch hypr kitty lazygit nvim tmux waybar vim" # list of config folders to symlink

##########

# Create a backup directory for existing configs
echo "Creating $backup_dir for backup of any existing dotfiles in ~/.config"
mkdir -p $backup_dir
echo "...done"

# Change to the dotfiles directory
echo "Changing to the $dotfiles_dir directory"
cd $dotfiles_dir || {
  echo "Directory $dotfiles_dir not found"
  exit 1
}
echo "...done"

# Backup existing configs and create symlinks
for folder in $folders; do
  if [ -d ~/.config/$folder ] || [ -L ~/.config/$folder ]; then
    echo "Moving existing ~/.config/$folder to $backup_dir"
    mv ~/.config/$folder $backup_dir/
  fi
  echo "Creating symlink for $folder in ~/.config"
  ln -s $dotfiles_dir/$folder ~/.config/$folder
done

echo "All symlinks created successfully!"

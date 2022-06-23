# Guide

## NEW INSTALLATION -> DO THIS FIRST:
Install packer and then :PackerInstall

## NvimTree
The docs kinda suck on this one, but you can find the default keybindings over here:
`:help nvim-tree-mappings`

I have settings inside `nvim-tree.lua` so that it only obeys the :cd command.
This is probably not ideal and I should spend some time tweaking this behavior.
I tend to forget the keybindings for the tree, so navigation is still far from ideal.

## JS Config
Currently working on the ideal setup for React. Lots of details going on so it's important to update this document to make sense of configs and dependencies.

### nvim-cmp.lua
I am using tsserver together with lua snip. They need to be installed separately

### formatter.lua
This guy runs the formatter, but the docs only teach you how to configure it for lua. I dug around for a while and tried to replicate the same behavior for JS.

Inside the lib -> The `formatter/filetypes` directory has the supported filetypes. Each file type contains a table with hooks for every executable supported for that filetype.

You have to install the executable separately. I went with prettierd for speed.

### Telescope
It's a mess and I still have to figure out how it works and how to configure it properly.



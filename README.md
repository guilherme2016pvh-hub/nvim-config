# nvim

A Neovim configuration built just for me to learn and explore the editor
Uses the native `vim.pack` plugin manager of Neovim v0.12.2 (no external plugin managers required.)

## Structure

All configuration lives under `.config/nvim/` and is split into modules loaded via `require()` from `init.lua`. 
Just to make things more easy to use

## Requirements

- Neovim version > 0.12.2
- A Nerd Font installed and set in your terminal (for the icons used)
- `clangd` in PATH (for C/C++ LSP support)

## Installation

Clone directly into your Neovim config directory:

    git clone https://github.com/XInel-s/nvim ~/.config/nvim

Then open Neovim, dont worry the plugins installed will be automatically fetched via `vim.pack`

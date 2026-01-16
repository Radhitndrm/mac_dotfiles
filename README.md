# mac_dotfiles

This repository contains my personal dotfiles and configuration scripts for macOS. It helps to quickly set up and customize a macOS environment with my favorite tools, settings, and plugins.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Structure](#structure)
- [Dependencies](#dependencies)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

## Overview

- **Primary Language:** Lua (configuration, mainly for Neovim)
- **Shell Scripts:** For automation, environment setup, and configuration
- **C code:** Custom command-line utilities or helpers
- **Makefile:** Automation of build/setup tasks

This dotfiles collection is designed for rapid, repeatable configuration of a productive macOS development environment.

## Features

Some of the major features and applications configured or supported in this dotfiles repository:

- **Kitty Terminal:** [Kitty](https://sw.kovidgoyal.net/kitty/) is a fast, feature-rich, GPU-based terminal emulator. Includes custom themes and keybindings.
- **Aerospace:** [Aerospace](https://aerospace.krypton.nyc/) is an advanced window manager for macOS, providing tiling, stacking, and floating layouts, with keyboard-driven management.
- **Neovim:** A modern, extensible editor configured using Lua with plugins for enhanced development experience.
- **Oh My Zsh / Zsh:** Includes `.zshrc` and custom plugins/themes for a powerful shell experience.
- **Tmux:** Optional configuration for terminal multiplexing.
- **Git:** Custom Git configuration/aliases for improved workflow.
- **Homebrew Scripts:** To quickly install required tools and packages.
- **Other utilities:** Configurations or scripts for tools like fzf, ripgrep, starship, bat, and more.
- **macOS Defaults Tweaks:** Shell scripts to adjust system settings to your preference.

You can enable, customize, or remove any component as needed.

## Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/Radhitndrm/mac_dotfiles.git ~/mac_dotfiles
   ```

2. **Run the setup script or symlink desired files:**
   ```sh
   cd ~/mac_dotfiles
   ./install.sh
   ```

   > **Note:** Please review any script before running, and adapt it to your system if necessary.

3. **Optional**
   - Symlink dotfiles to your `$HOME`, e.g.:
     ```sh
     ln -s ~/mac_dotfiles/.zshrc ~/.zshrc
     ln -s ~/mac_dotfiles/.config/kitty ~/.config/kitty
     ```
   - Customize configs to match your preferences or environment.

## Structure

- `.config/kitty/` – Kitty terminal configuration files.
- `.config/aerospace/` – Aerospace window manager settings.
- `.config/nvim/` – Neovim (Lua-based) configuration.
- `bin/` – Custom scripts/utilities.
- `.zshrc` – ZSH shell startup file.
- `.gitconfig` – Git configuration/aliases.
- `install.sh` – Installation/setup script.
- `Makefile` – Automates custom build steps, if any.

## Dependencies

- macOS (tested on Apple Silicon/Intel Macs)
- [Homebrew](https://brew.sh/) (for installing most packages)
- [Kitty](https://sw.kovidgoyal.net/kitty/)
- [Aerospace](https://aerospace.krypton.nyc/)
- [Neovim](https://neovim.io/)
- [Oh My Zsh](https://ohmyz.sh/) or [ZSH](https://www.zsh.org/)
- [Tmux](https://github.com/tmux/tmux) (optional)
- [fzf](https://github.com/junegunn/fzf), [ripgrep](https://github.com/BurntSushi/ripgrep), [starship](https://starship.rs/), [bat](https://github.com/sharkdp/bat) (optional)
- Command-line tools: `git`, `curl`, `wget`, `gcc` or `clang`

## Customization

Feel free to edit any configuration file to suit your workflow and preferences. You may find inline comments in each config or script for easy reference.



---

> **Note:** Always review and understand any downloaded scripts before executing to ensure your system’s security.

# Dots

My personal dotfiles for Arch Linux, managed with GNU Stow.

<p align="center">
  <img src="./screenshots/homescreen2.png" alt="Desktop Screenshot" width="900">
</p>

| Ghostty                                | Settings                                |
| -------------------------------------- | --------------------------------------- |
| ![ghostty](./screenshots/terminal.png) | ![settings](./screenshots/settings.png) |

| SideBars / TopBar                            | Overview                                |
| -------------------------------------------- | --------------------------------------- |
| ![sidebars-topbar](./screenshots/topbar.png) | ![Overview](./screenshots/overview.png) |

## Environment

- Arch Linux
- Hyprland
- Neovim (LazyVim)
- Zsh (Oh My Zsh + zsh-vi-mode)
- Ghostty
- Starship
- Matugen
- Git
- User systemd services
- end-4/illogical-impulse
- quickshell

## Prerequisites

Install GNU Stow:

```bash
sudo pacman -S stow
```

## Installation

Clone the repository:

```bash
git clone git@github.com:nitin-dixit/dots.git ~/dotfiles
cd ~/dotfiles
```

Stow individual packages:

```bash
stow nvim
stow zsh
stow git
stow hypr
stow ghostty
stow starship
stow systemd
```

Or stow everything:

```bash
stow */
```

## Systemd User Services

After stowing systemd files:

```bash
systemctl --user daemon-reload
systemctl --user enable --now wallpRotate.timer
```

## Useful Packages

On a fresh Arch installation, you may want:

```bash
sudo pacman -S \
  stow \
  git \
  neovim \
  zsh \
  ghostty \
  kitty \
  starship \
  hyprland
```

Additional packages may be required depending on your configuration.

## Notes

- Private keys, tokens, credentials, and secrets are excluded from this repository.
- SSH configuration is tracked, but SSH private keys are not.
- These dotfiles reflect my personal workflow and are optimized for Arch Linux and Hyprland.

# Linux Dotfiles
These are the configuration files I use across my Linux systems. They mainly
serve the purpose of personalising bash, git and vim; making some quality of
life changes that I find useful across all of my installs. The dotfiles are
fairly minimal and do not require any external dependencies besides git.

## Installation
To avoid unnecessary symlinks I use a bare git repository to store my dotfiles
and then use an alias to run commands from the home directory against the bare
repository.
```bash
alias df='git --git-dir=$HOME/GitHub/dotfiles/ --work-tree=$HOME'
git clone --bare git@github.com:jakescaife/dotfiles.git $HOME/GitHub/dotfiles
df checkout
```
The checkout will fail if dotfiles already exist in the home directory, simply
remove them and run the checkout again. Additionally, to avoid cluttering git
commands with unwanted files in the home folder, we can run the following
command to hide files from git that we are not interested in tracking.
```bash
df config --local status.showUntrackedFiles no
```

########## ZSH / OH MY ZSH ##########
export ZSH_DISABLE_COMPFIX=true
export ZSH=$HOME/.oh-my-zsh

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
  battery
  bundler
  colored-man-pages
  colorize
  command-not-found
  cp
  django
  docker
  extract
  fasd
  gem
  git
  git-extras
  history-substring-search
  heroku
  httpie
  node
  npm
  osx
  pep8
  pip
  python
  safe-paste
  ssh-agent
  sudo
  web-search
  zsh_reload
)

# Load ZSH and instantiate plugins
source $ZSH/oh-my-zsh.sh

# Load Globals
source $HOME/.dotfiles/lib/globals

# Load Aliases
source $DOTFILES_ROOT/lib/aliases

# Load Functions
source $DOTFILES_ROOT/lib/functions

# Load prompt
source $DOTFILES_ROOT/lib/prompt

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship

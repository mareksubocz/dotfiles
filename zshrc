# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/mareksubocz/.oh-my-zsh"
export EDITOR='nvim'
export VISUAL='nvim'
ZSH_THEME="robbyrussell"
eval "$(pyenv init -)"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
	git
        # zsh-syntax-highlighting
        zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
bindkey -v

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias zshconfig="subl ~/.zshrc"
alias vimconfig="nvim ~/.config/nvim/init.vim"
alias git=hub
alias pdflatex="/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin/pdflatex"
alias polluks="ssh inf136806@polluks.cs.put.poznan.pl"
alias myg++="g++-9 -Wall -Wextra -Wshadow -Wconversion -Wnon-virtual-dtor -pedantic -Wfatal-errors -g -std=c++17 -Wno-sign-compare -fsanitize=undefined,address -Wno-builtin-macro-redefined"
alias activenv="source venv/bin/activate"
alias vs=code
alias cleanbrew="brew bundle dump && brew bundle --force cleanup"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# export JAVA_HOME=/Library/Java/Home

# function cd() {
#   builtin cd "$@"

#   if [[ -z "$VIRTUAL_ENV" ]] ; then
#       # If config file is found -> activate the vitual environment
#       venv_cfg_filepath=$(find . -maxdepth 2 -type f -name 'pyvenv.cfg' 2> /dev/null)
#       if [[ -z "$venv_cfg_filepath" ]]; then
#         return # no config file found
#       fi

#       venv_filepath=$(cut -d '/' -f -2 <<< ${venv_cfg_filepath})
#       if [[ -d "$venv_filepath" ]] ; then
#         source "${venv_filepath}"/bin/activate
#       fi
#   else
#     # If the current directory is not contained
#     # within the venv parent directory -> deactivate the venv.
#       cur_dir=$(pwd -P)
#       venv_dir="$(dirname "$VIRTUAL_ENV")"
#       if [[ "$cur_dir"/ != "$venv_dir"/* ]] ; then
#         deactivate
#       fi
#   fi
# }

    # auto activate virtualenv
# Modified solution based on https://stackoverflow.com/questions/45216663/how-to-automatically-activate-virtualenvs-when-cding-into-a-directory/56309561#56309561
function auto_active_env() {

  ## Default path to virtualenv in your projects
  DEFAULT_ENV_PATH="./env"

  ## If env folder is found then activate the vitualenv
  function activate_venv() {
    if [[ -f "${DEFAULT_ENV_PATH}/bin/activate" ]] ; then
      source "${DEFAULT_ENV_PATH}/bin/activate"
      echo "Activating ${VIRTUAL_ENV}"
    fi
  }

  if [[ -z "$VIRTUAL_ENV" ]] ; then
    activate_venv
  else
    ## check the current folder belong to earlier VIRTUAL_ENV folder
    # if yes then do nothing
    # else deactivate then run a new env folder check
      parentdir="$(dirname ${VIRTUAL_ENV})"
      if [[ "$PWD"/ != "$parentdir"/* ]] ; then
        echo "Deactivating ${VIRTUAL_ENV}"
        deactivate
        activate_venv
      fi
  fi
}
chpwd_functions=(${chpwd_functions[@]} "auto_active_env")
export PATH="/usr/local/sbin:$PATH"

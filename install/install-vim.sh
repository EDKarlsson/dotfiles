#!/bin/bash
PLUG_ALE="ale https://github.com/dense-analysis/ale"
PLUG_NERDTREE="NERDTree https://github.com/preservim/nerdtree"
PLUG_RUST="rust.vim https://github.com/rust-lang/rust.vim"
PLUG_GO="vim-go https://github.com/fatih/vim-go"
PLUG_JS="vim-javascript https://github.com/pangloss/vim-javascript"
PLUG_JSX="vim-jsx-pretty https://github.com/maxmellon/vim-jsx-pretty"
PLUG_PRETTIER="vim-prettier https://github.com/prettier/vim-prettier"

PLUGINS=(
    "${PLUG_ALE}"
    "${PLUG_NERDTREE}"
    "${PLUG_RUST}"
    "${PLUG_GO}"
    "${PLUG_JS}"
    "${PLUG_JSX}"
    "${PLUG_PRETTIER}"
) 

ln -sf "$DOTFILES/vim/vimrc" "$HOME/.vimrc"
echo `mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors  ~/.vim/pack  ~/.vim/plugged`

PLUGIN_FOLDER=~/.vim/pack

for plugin in "${PLUGINS[@]}"
do
    name=`cut -d' ' -f1 <<< ${plugin}`
    repo=`cut -d' ' -f2 <<< ${plugin}`
    install_dir="${PLUGIN_FOLDER}/${name}/start"
    echo "Installing: ${name} - Repo: ${repo}"
    mkdir -p ${install_dir}
    #echo "git clone --depth 1 ${repo} ${install_dir}/${name}"
    git clone --depth 1 "${repo}" "${install_dir}/${name}"
done

# Install yarn dependencies
cd ~/.vim/pack/vim-prettier/start/vim-prettier
yarn install
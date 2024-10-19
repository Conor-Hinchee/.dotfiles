## Conor Hinchee's Dotfiles 

My current config of all things useful.

Generated with the help of https://medium.com/@simontoth/best-way-to-manage-your-dotfiles-2c45bb280049


## Getting Started 

Create the new directory 
testing!!!!

`mkdir .dotfiles`

create an aliases for git
`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME \`

init our new git repository 
`cd .dotfiles`
`dotfiles init`
`dotfiles config --local status.showUntrackedFiles no`

and lets ensure we are on the main branch
`dotfiles branch -M main`

 and then commit it if you want. 
 `dotfiles commit -m 'Hello world`

 make some more changes
`dotfiles add .`

push 'er up
`dotfiles push -u origin main`

## Putting it to use 

On the next machine ...

ensure you are home
`cd ~`

create the alias
`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME`

clone the repo
`git clone https://github.com/Conor-Hinchee/.dotfiles.git`

set up the git config
`dotfiles config --local status.showUntrackedFiles no`
`dotfiles checkout`

#install home brew
https://docs.brew.sh/Homebrew-on-Linux

install zsh and oh-my-zsh
https://formulae.brew.sh/formula/zsh
https://github.com/ohmyzsh/ohmyzsh

update the local .zshrc file so you point to the custom folder
```bash     
# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.dotfiles/.zsh_custom
 ```

Install nvm 
https://formulae.brew.sh/formula/nvm

Install nvchad
https://nvchad.com/docs/quickstart/install/


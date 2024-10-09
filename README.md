## Conor Hinchee's Dotfiles 

My current config of all things useful.

Generated with the help of https://medium.com/@simontoth/best-way-to-manage-your-dotfiles-2c45bb280049


## Getting Started 

Create the new directory 

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

pre-req

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

create the alias
`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME`

clone the repo
`git clone --bare git@github.com:Conor-Hinchee/dotfiles.git $HOME/.dotfiles`

set up the git config
`dotfiles config --local status.showUntrackedFiles no`
`dotfiles checkout`
 

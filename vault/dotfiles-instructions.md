## back up of the original article

Do you want a zero friction way to manage your dotfiles across multiple machines that relies only on git? Well, read on!
Setting up

First, we define a new alias that will allow us to manage the dotfiles from anywhere in our directory tree. The command name and the git directory can be named however you like.

❯ mkdir .dotfiles
❯ alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

We will need this alias permanently, so add it to your .bashrc, .zshrc or whichever file your preferred shell utilizes for alias definition.

# !! expands to previous command
❯ echo !! >>~/.bashrc

Now init the repository and make our status a bit neater by changing the git configuration so it doesn’t show untracked files.

❯ dotfiles init
❯ dotfiles config --local status.showUntrackedFiles no

Since this demo is using github.com for sharing the repository, we set the name of the branch to main.

❯ dotfiles branch -M main

Add any configuration files you want to store in your dotfiles repository. For this demo, we will stick with just .bashrc.

❯ dotfiles add ~/.bashrc
❯ dotfiles commit -m 'Initial commit with .bashrc'

To share this across machines, we can add a remote and push to it. You don’t have to use github.com necessarily, or even a remote website, any Linux machine or a network share will work just fine.

❯ dotfiles remote add origin git@github.com:HappyCerberus/dotfiles-demo.git
❯ dotfiles push -u origin main

Second machine

On a second machine, we again define the alias, clone, and checkout.

❯ alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'❯ git clone --bare git@github.com:HappyCerberus/dotfiles-demo.git $HOME/.dotfiles❯ dotfiles config --local status.showUntrackedFiles no❯ dotfiles checkout

If you already have some of the dotfiles present, you will see this error.

error: The following untracked working tree files would be overwritten by checkout:
 .bashrc
Please move or remove them before you switch branches.
Aborting

Remove or backup any collisions and repeat the checkout.

❯ mv ~/.bashrc ~/.bashrc_backup
❯ dotfiles checkout

Congratulations, you are done!
Dealing with shell/vim/tmux plugins

If you are like me and using plenty of plugins for your favourite command-line tools, you will need to deal with large repositories that you still want to store with your dotfiles.

Fortunately, git provides submodule functionality to deal with this precise problem.

For example to add vim-airline plugin:

❯ cd .vim/bundle
❯ dotfiles submodule add https://github.com/vim-airline/vim-airline❯ dotfiles status
On branch main
Your branch is up to date with 'origin/main'.Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
 modified:   .gitmodules
 new file:   .vim/bundle/vim-airlineUntracked files not listed (use -u option to show untracked files)

A submodule is stored by reference using the URL and commit hash. However, when crossing to another machine, you need to do a bit more upkeep.

❯ dotfiles submodule init
❯ dotfiles submodule update

This will download and update any submodules that this machine is missing.

To update, or pick a specific tag and commit for a submodule, simply enter the subdirectory of the submodule and manipulate it using standard git commands. As a result, the submodule will show up as modified.

❯ dotfiles status
On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
 modified:   .vim/bundle/vim-fugitive (new commits)no changes added to commit (use "git add" and/or "git commit -a"

And that is all that I have for you in this write-up.
Thank you for reading

Thank you for reading this article. Did you enjoy it?

I also publish videos on YouTube: youtube.com/c/simontoth and if you want to chat, hit me up on Twitter @SimonToth83 or LinkedIn linkedin.com/in/simontoth.
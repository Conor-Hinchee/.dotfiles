
#!/bin/sh

#### intro
gum style \
	--foreground 212 --border-foreground 212 --border double \
	--align center --width 50 --margin "1 2" --padding "2 4" \
	'Git Branch Clean Up V1 
    - BY CONOR HINCHEE (using GUM)
  '

### Ask for main brain and purges everything else
echo "Select Main Branch"
branches=$(git branch | cut -c 3-)
masterBranch=$(gum choose $branches --height 15  --limit 1)
gum spin --spinner dot --show-output --title "PURGING..." -- git checkout $masterBranch | git branch | grep -v $masterBranch | xargs git branch -D


### print the stash list
echo 'Dropping all stashes';
git stash list;
git stash clear;


### print out 
echo 'clean slate';
git branch;


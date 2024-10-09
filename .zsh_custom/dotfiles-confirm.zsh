# Define a function to confirm before running commands in a specific directory
confirm_directory() {
    local target_directory="/Users/moarwaffles/.dotfiles"
    
    if [[ "$(pwd)" = "$target_directory" ]]; then
        echo "commands are still executing in $target_directory this is a nice place holder"
        echo "Are you sure you want to run this command in $target_directory?  (y/n) \c"
        read answer
        if [[ $answer != "y" ]]; then
            echo "Command execution canceled."
            return 1
        fi
    fi
}

# Hook into the preexec function to call confirm_directory before each command execution
preexec_functions+=(confirm_directory)


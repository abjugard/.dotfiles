gitcd() {
    if [[ -n $(which git 2> /dev/null) && -n $(git status 2>/dev/null) ]]
    then
        _GROOT=$(git rev-parse --show-toplevel)
        if [[ -z "$1" && "$_GROOT" != "$PWD" ]]
        then
            cd "$_GROOT"
            return
        fi
    fi
    cd $@
}
alias cd='gitcd'

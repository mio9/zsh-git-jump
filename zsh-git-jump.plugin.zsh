function gj() {
    # test if git and fzf is installed
    if ! command -v git &> /dev/null || ! command -v fzf &> /dev/null; then
        echo "git or fzf is not installed"
        return 1
    fi
    # get the top level of the git repo
    repo_path=$(git rev-parse --show-toplevel)
    if [[ -z "$repo_path" ]]; then
        echo "You are at $(pwd)"
    elif [[ -z "$1" ]]; then
        cd $repo_path
    else
        selection=$(cd $repo_path && find $repo_path -type d -maxdepth 2 | grep -v "node_modules" | fzf --query="$1")
        if [[ -n "$selection" ]]; then
            cd $selection
        fi
    fi
}

function parse_git_branch {
    git rev-parse --git-dir > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        state=""
        git_status="$(git status 2> /dev/null)"
        detached_branch_pattern="# Not currently on any branch"
        untracked_pattern="# Untracked files:"
        new_pattern="new file:"
        not_staged_pattern="Changes not staged for commit"

        #no branch
        if [[ ${git_status}} =~ ${detached_branch_pattern} ]]; then
            state="${state}\033[0;31m●\033[m"
        fi

        #files not staged for commit
        if [[ ${git_status}} =~ ${not_staged_pattern} ]]; then
            state="${state}\033[0;33m●\033[m"
        fi

        #new files
        if [[ ${git_status} =~ ${new_pattern} ]]; then
            state="${state}\033[0;32m●\033[m"
        fi

        #untracked files
        if [[ ${git_status} =~ ${untracked_pattern} ]]; then
            state="${state}\033[0;31m●\033[m"
        fi

        echo -e " ($(__git_ps1 '%s')${state})"
    fi
    return
}
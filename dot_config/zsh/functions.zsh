# Clone a GitHub repo as bare + worktree with cd
: "${WORKSPACE_DIR:=$HOME/workspaces}"
clone() {
  local dir
  dir="$("${WORKSPACE_DIR}/alecharp/toolbox/scripts/clone" "$@")" && cd "$dir"
}

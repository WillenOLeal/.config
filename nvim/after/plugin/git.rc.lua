local status, git = pcall(require, "git")
if (not status) then return end

git.setup({
  keymaps = {
    -- Open blame window
    blame = "<Leader>gb",
    quit_blame = "q",
    -- Create a pull request with the target branch is set in the `target_branch` option
    create_pull_request = "<Leader>gn",
    -- Open file/folder in git repository
    browse = "<Leader>go",
    open_pull_request = "<Leader>gp",
  }
})

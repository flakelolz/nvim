return {
  {
    "marzeq/command-runner.nvim",
    event = "BufEnter",
    -- these are the default options, you don't need to include them if you don't want to change them
    opts = {
      -- When running all commands, run the next command even if the previous one failed
      run_next_on_failure = false,
      -- The height of the command output split (in %)
      split_height = 25,
      --Whether to start in insert mode in the Set buffer
      start_insert = false,
      --Whether the cursor should be positioned at the end of the buffer in the Set buffer
      start_at_end = true,
    },
  },
}

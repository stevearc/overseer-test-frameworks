max_comment_line_length = false
codes = true

exclude_files = {
  "tests/",
}

ignore = {
  "212", -- Unused argument
  "631", -- Line is too long
  "122", -- Setting a readonly global
  "542", -- Empty if branch
}

read_globals = {
  "vim",
  "describe",
  "it",
  "assert",
}

globals = {
  "describe",
  "it",
  "assert",
}

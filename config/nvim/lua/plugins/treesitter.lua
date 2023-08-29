-- See ':help nvim-treesitter'

require('nvim-treesitter.configs').setup {

  -- Add langauges to be installed for treesitter
  ensure_installed = { 'lua', 'python', 'vim', 'vimdoc', 'html', 'css', 'javascript', 'typescript' },

  -- Auto install is disabled by default. Explicitly declared here for clearer understanding of the config
  auto_install = false,

  -- Turn of LSP warning
  sync_install = false,
  ignore_install = {},
  TSConfig = {},
  modules = {},

  -- General settings
  highlight = { enable = true },
  indent = { enable = false },
  incremental_selection = {
    init_selection = '<c-space>',
    node_incremental = '<c-space>',
    scope_incremental = '<c-s>',
    node_decremental = '<M-space>',
  },

  -- Read more about what are the 'textobjects', 'move', and 'swap' modules
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['aa'] = '@parameter.outer',
        ['ia'] = '@parameter.inner',
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ['<leader>a'] = '@parameter.inner',
      },
      swap_previous = {
        ['<leader>A'] = '@parameter.inner',
      },
    },
  },
}

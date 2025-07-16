-- Telescope configuration
require('telescope').setup({
  defaults = {
    -- Default configuration for telescope goes here:
    prompt_prefix = "🔍 ",
    selection_caret = "➤ ",
    path_display = { "truncate" },
    
    mappings = {
      i = {
        -- Insert mode mappings
        ["<C-u>"] = false,
        ["<C-d>"] = false,
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
        ["<C-q>"] = require('telescope.actions').send_to_qflist + require('telescope.actions').open_qflist,
        ["<ESC>"] = require('telescope.actions').close,
      },
      n = {
        -- Normal mode mappings
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
        ["<C-q>"] = require('telescope.actions').send_to_qflist + require('telescope.actions').open_qflist,
      },
    },
  },
  
  pickers = {
    -- Default configuration for builtin pickers goes here:
    find_files = {
      -- theme = "dropdown",
      hidden = true,  -- Show hidden files
      find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
    },
    live_grep = {
      additional_args = function(opts)
        return {"--hidden"}
      end
    },
  },
  
  extensions = {
    -- Your extension configuration goes here:
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
  }
})

-- Load telescope extensions
pcall(require('telescope').load_extension, 'fzf')
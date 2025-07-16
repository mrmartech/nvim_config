-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   use( 'nvim-tree/nvim-web-devicons' )    
   use( 'lewis6991/gitsigns.nvim' ) 
   use( 'romgrk/barbar.nvim' )
   
   --Lexima 
   use( 'cohama/lexima.vim' )
   
   use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
   })
   
   -- Telescope fuzzy finder
   use {
     'nvim-telescope/telescope.nvim', 
     tag = '0.1.8',
     requires = { 
       {'nvim-lua/plenary.nvim'},
       {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
     }
   }
end)
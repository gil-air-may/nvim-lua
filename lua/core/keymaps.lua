-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to space
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
--- Reload configuration without restarting vim
map('n', '<leader>r', ":lua require('core/utils').reloadconfig()<CR>")
-----------------------------------------------------------

-- Disable arrow keys

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

--map('n', '<right>', 'nop')

-- Reload configuration without restart nvim
-- map('n', '<leader>r', ':so $MYVIMRC<CR>')

-- Move cursor to end of line
map('n', '<leader>0', '<home>')
-- Move cursor to beginning of line
map('n', '<leader>;', '$')

-- Fast saving with <leader> and s
map('n', '<leader>fs', ':w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<C-p>', ':NvimTreeFindFile<CR>')      -- search file

-- Vista tag-viewer
map('n', '<C-m>', ':Vista!!<CR>') -- open/close

-- Directory mappings
map('n', '<leader>9', ':cd ~/.config/nvim/<CR>')

-- Telescope mappings

--- Fuzzy find (anything) in current directory:
map('n', '<leader>ff', ':Telescope live_grep<CR>')

--- Fuzzy find buffers
map('n', '<leader>bb', ':Telescope buffers<CR>')

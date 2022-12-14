-- DISABLED
lvim.builtin.which_key.mappings['f'] = {}
lvim.builtin.which_key.mappings['e'] = {}

-- LEADER
lvim.leader = "space"

-- NORMAL MODE
lvim.keys.normal_mode["<C-s>"] = ":w<cr>" -- SAVE
lvim.keys.normal_mode["dw"] = 'vb"_d' -- Delete word backawards
lvim.keys.normal_mode["<C-a>"] = 'gg<S-v>G' -- Select all
lvim.keys.normal_mode["<leader>fw"] = '<cmd>Telescope live_grep<CR>' -- Find word
lvim.keys.normal_mode["<leader>ff"] = '<cmd>Telescope find_files<CR>' -- Find files
lvim.keys.normal_mode["gp"] = '<cmd>Lspsaga peek_definition<CR>' -- Preview Definition
lvim.keys.normal_mode["gh"] = '<cmd>Lspsaga lsp_finder<CR>' -- References
lvim.keys.normal_mode["gr"] = '<cmd>Lspsaga rename<CR>' -- Rename
lvim.keys.normal_mode["mm"] = '<cmd>AerialToggle!<CR>' -- Outline
lvim.keys.normal_mode["+"] = '<C-a>' -- Increment
lvim.keys.normal_mode["-"] = '<C-x>' -- Decrement
lvim.keys.normal_mode["<C-n>"] = "<cmd>lua require'lir.float'.toggle()<CR>" -- Float Tree
lvim.keys.normal_mode["<tab>"] = "<cmd>BufferLineCycleNext<CR>" -- Buffer Next
lvim.keys.normal_mode["<S-tab>"] = "<cmd>BufferLineCyclePrev<CR>" -- Buffer Prev
lvim.keys.normal_mode["<leader>x"] = "<cmd>BufferKill<CR>" -- Buffer Prev

-- INSERT MODE
lvim.keys.insert_mode["jj"] = "<ESC>" -- Back Normal Mode

lvim.builtin.telescope.on_config_done = function()
  local actions = require "telescope.actions"
  lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
  lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
  lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
end

lvim.builtin.telescope.defaults.mappings.n["<leader>f"] = nil

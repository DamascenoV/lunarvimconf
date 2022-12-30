lvim.plugins = {
  {
    "Tsuzat/NeoSolarized.nvim"
  },
  {
    "glepnir/lspsaga.nvim"
  },
  {
    "f-person/git-blame.nvim",
        config = function ()
            vim.cmd "highlight default link gitblame SpecialComment"
            vim.g.gitblame_enable = 0
        end
  },
  {
    "romgrk/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup{
        enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
        throttle = true, -- Throttles plugin updates (may improve performance)
        max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
        patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
          default = {
            'class',
            'function',
            'method',
          },
        },
      }
    end
  },}

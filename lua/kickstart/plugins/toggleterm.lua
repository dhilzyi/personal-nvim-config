return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        -- Key to toggle the terminal
        open_mapping = [[<c-\>]],

        -- Appearance
        direction = 'float',
        start_in_insert = true,

        float_opts = {
          border = 'curved', -- 🟢 Rounded corners
          winblend = 0, -- Transparency (0 = solid, 100 = invisible)

          -- 🟢 Dynamic 80% Width and Height
          width = function()
            return math.ceil(vim.o.columns * 0.8)
          end,
          height = function()
            return math.ceil(vim.o.lines * 0.8)
          end,
        },
      }

      -- 🟢 Optional: Make moving out of terminal easier
      function _G.set_terminal_keymaps()
        local opts = { buffer = 0 }
        vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts) -- Esc to go to Normal mode
        vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
      end

      -- Apply keymaps when terminal opens
      vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'
    end,
  },
}

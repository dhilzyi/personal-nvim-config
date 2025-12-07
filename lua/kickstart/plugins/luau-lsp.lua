return {
  {
    'lopi-py/luau-lsp.nvim',
    opts = {
      platform = {
        type = 'roblox', -- 🟢 Sets the environment to Roblox
      },
      types = {
        roblox_security_level = 'PluginSecurity', -- 🟢 Enables plugin-level API auto-complete
      },
      sourcemap = {
        enabled = false,
        autogenerate = false,
      },
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },
}

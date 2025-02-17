-- ~/.config/nvim/lua/custom/plugins/eslint.lua
return {
  'MunifTanjim/eslint.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('eslint').setup {
      bin = 'eslint_d', -- or 'eslint'
      code_actions = {
        enable = true,
        apply_on_save = {
          enable = false,
          types = { 'problem', 'directive', 'suggestion', 'layout' }, -- directive, suggestion, layout
        },
        disable_rule_comment = {
          enable = true,
          location = 'separate_line',
        },
      },
      diagnostics = {
        enable = true,
        report_unused_disable_directives = false,
        run_on = 'type', -- or `save`
      },
    }
  end,
}

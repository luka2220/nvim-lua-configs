local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup = {
  highlight = {
    enabled = true,
    disabled = {},
  },
  indent = {
    enabled = true,
    disabled = {},
  },
  ensure_installed = {
    'tsx',
    'lua',
    'json',
    'css',
    'go',
    'python'
  },
  autotag = {
    enabled = true
  }
}

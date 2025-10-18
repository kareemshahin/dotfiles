return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  opts = {
    install_dir = vim.fn.stdpath('data') .. '/site'
  },
  config = function()
    require('nvim-treesitter').install { 'python', 'javascript', 'go', 'ruby', 'html', 'markdown', 'hcl'}
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'python', 'go', 'html', 'markdown', 'ruby', 'javascript', 'hcl' },
      callback = function() vim.treesitter.start() end,
    })
  end,
}

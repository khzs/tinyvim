-- mason, write correct names only
vim.api.nvim_create_user_command("MasonInstallAll", function()
  vim.cmd "MasonInstall lua-language-server stylua prettier"
end, {})

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    local called_with = vim.fn.expand("%")
    if called_with == "." or called_with == "" then
      vim.cmd("Telescope find_files")
    end
    vim.cmd("NvimTreeOpen")
    vim.cmd("wincmd p") -- Switch back to the previous window aka the editor
  end,
})

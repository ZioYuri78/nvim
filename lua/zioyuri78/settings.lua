vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.guicursor = "n-v-c:block,i:ver50,a:blinkon500"
vim.opt.splitbelow = true
vim.opt.showmode = false

vim.diagnostic.config({
	virtual_text = false
})

--VimLeave,VimSuspend * set guicursor=a:block-blinkon0
vim.api.nvim_create_autocmd(
	{"VimLeave","VimSuspend"},
	{
		pattern = "*",
		command = "set guicursor=a:hor20-blinkon500"
	}
)


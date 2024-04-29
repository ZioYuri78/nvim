vim.g.loaded_python_provider = 0
if vim.loop.os_uname().sysname == "Windows_NT" then
	vim.g.python3_host_prog = '../Programs/Python/Python312'
else
	vim.g.python3_host_prog = '/home/zioyuri78/anaconda/bin/python'
end
vim.g.pyxversion = 3

require("zioyuri78")




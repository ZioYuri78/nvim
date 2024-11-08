---@diagnostic disable: lowercase-global, duplicate-set-field

local ESC = ''
if _VERSION < 'Lua 5.4' then
	ESC = '\27'
else
	ESC = '\x1B'
end

printColorTable = function()

	io.write(' 30 ')
	for i = 30, 37 do
		io.write(ESC..'['..i..'m'..'AA ')
	end
	io.write(ESC..'[0m  37\n')

	io.write(' 90 ')
	for i = 90, 97 do
		io.write(ESC..'['..i..'m'..'AA ')
	end
	io.write(ESC..'[0m  97\n')

	io.write(' 40 ')
	for i = 40, 47 do
		io.write(ESC..'['..i..'m'..'   ')
	end
	io.write(ESC..'[0m  47\n')

	io.write('100 ')
	for i = 100, 107 do
		io.write(ESC..'['..i..'m'..'   ')
	end
	io.write(ESC..'[0m 107\n')
end


-- colors table
text_colors = {}

-- foregroung colors table
text_colors.f = {}
-- bright foregroung colors table
text_colors.fb = {}

-- background colors table
text_colors.b = {}
-- bright background colors table
text_colors.bb = {}

-- foreground colors
text_colors.f.black = function(text)
	return ESC .. '[30m' .. text .. ESC .. '[0m'
end

text_colors.f.red = function(text)
	return ESC .. '[31m' .. text .. ESC .. '[0m'
end

text_colors.f.green = function(text)
	return ESC .. '[32m' .. text .. ESC .. '[0m'
end

text_colors.f.yellow = function(text)
	return ESC .. '[33m' .. text .. ESC .. '[0m'
end

text_colors.f.blue = function(text)
	return ESC .. '[34m' .. text .. ESC .. '[0m'
end

text_colors.f.magenta = function(text)
	return ESC .. '[35m' .. text .. ESC .. '[0m'
end

text_colors.f.cyan = function(text)
	return ESC .. '[36m' .. text .. ESC .. '[0m'
end

text_colors.f.white = function(text)
	return ESC .. '[37m' .. text .. ESC .. '[0m'
end

text_colors.f.extended = function(text, r, g, b)
	return ESC .. string.format('[38;2;%d;%d;%dm', r, g, b) .. text .. ESC .. '[0m'
end


-- bright foreground colors
text_colors.fb.black = function(text)
	return ESC .. '[90m' .. text .. ESC .. '[0m'
end

text_colors.fb.red = function(text)
	return ESC .. '[91m' .. text .. ESC .. '[0m'
end

text_colors.fb.green = function(text)
	return ESC .. '[92m' .. text .. ESC .. '[0m'
end

text_colors.fb.yellow = function(text)
	return ESC .. '[93m' .. text .. ESC .. '[0m'
end

text_colors.fb.blue = function(text)
	return ESC .. '[94m' .. text .. ESC .. '[0m'
end

text_colors.fb.magenta = function(text)
	return ESC .. '[95m' .. text .. ESC .. '[0m'
end

text_colors.fb.cyan = function(text)
	return ESC .. '[96m' .. text .. ESC .. '[0m'
end

text_colors.fb.white = function(text)
	return ESC .. '[97m' .. text .. ESC .. '[0m'
end

-- background colors
text_colors.b.black = function(text)
	return ESC .. '[40m' .. text .. ESC .. '[0m'
end

text_colors.b.red = function(text)
	return ESC .. '[41m' .. text .. ESC .. '[0m'
end

text_colors.b.green = function(text)
	return ESC .. '[42m' .. text .. ESC .. '[0m'
end

text_colors.b.yellow = function(text)
	return ESC .. '[43m' .. text .. ESC .. '[0m'
end

text_colors.b.blue = function(text)
	return ESC .. '[44m' .. text .. ESC .. '[0m'
end

text_colors.b.magenta = function(text)
	return ESC .. '[45m' .. text .. ESC .. '[0m'
end

text_colors.b.cyan = function(text)
	return ESC .. '[46m' .. text .. ESC .. '[0m'
end

text_colors.b.white = function(text)
	return ESC .. '[47m' .. text .. ESC .. '[0m'
end

text_colors.b.extended = function(text, r, g, b)
	return ESC .. string.format('[48;2;%d;%d;%dm', r, g, b) .. text .. ESC .. '[0m'
end


-- bright background colors
text_colors.bb.black = function(text)
	return ESC .. '[100m' .. text .. ESC .. '[0m'
end

text_colors.bb.red = function(text)
	return ESC .. '[101m' .. text .. ESC .. '[0m'
end

text_colors.bb.green = function(text)
	return ESC .. '[102m' .. text .. ESC .. '[0m'
end

text_colors.bb.yellow = function(text)
	return ESC .. '[103m' .. text .. ESC .. '[0m'
end

text_colors.bb.blue = function(text)
	return ESC .. '[104m' .. text .. ESC .. '[0m'
end

text_colors.bb.magenta = function(text)
	return ESC .. '[105m' .. text .. ESC .. '[0m'
end

text_colors.bb.cyan = function(text)
	return ESC .. '[106m' .. text .. ESC .. '[0m'
end

text_colors.bb.white = function(text)
	return ESC .. '[107m' .. text .. ESC .. '[0m'
end

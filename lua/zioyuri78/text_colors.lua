---@diagnostic disable: lowercase-global, duplicate-set-field

local ESC = ''
if _VERSION < 'Lua 5.4' then
	ESC = '\27'
else
	ESC = '\x1B'
end

-- colors table
text_colors = {}
-- foregroung colors table
text_colors.f = {}
-- background colors table
text_colors.b = {}

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

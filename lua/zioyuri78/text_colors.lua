---@diagnostic disable: lowercase-global
-- colors table
text_colors = {}
-- foregroung colors table
text_colors.f = {}
-- background colors table
text_colors.b = {}

-- foreground colors
text_colors.f.black = function(text)
	return '\x1B[30m' .. text .. '\x1B[0m'
end

text_colors.f.red = function(text)
	return '\x1B[31m' .. text .. '\x1B[0m'
end

text_colors.f.green = function(text)
	return '\x1B[32m' .. text .. '\x1B[0m'
end

text_colors.f.yellow = function(text)
	return '\x1B[33m' .. text .. '\x1B[0m'
end

text_colors.f.blue = function(text)
	return '\x1B[34m' .. text .. '\x1B[0m'
end

text_colors.f.magenta = function(text)
	return '\x1B[35m' .. text .. '\x1B[0m'
end

text_colors.f.cyan = function(text)
	return '\x1B[36m' .. text .. '\x1B[0m'
end

text_colors.f.white = function(text)
	return '\x1B[37m' .. text .. '\x1B[0m'
end

-- background colors
text_colors.b.black = function(text)
	return '\x1B[40m' .. text .. '\x1B[0m'
end

text_colors.b.red = function(text)
	return '\x1B[41m' .. text .. '\x1B[0m'
end

text_colors.b.green = function(text)
	return '\x1B[42m' .. text .. '\x1B[0m'
end

text_colors.b.yellow = function(text)
	return '\x1B[43m' .. text .. '\x1B[0m'
end

text_colors.b.blue = function(text)
	return '\x1B[44m' .. text .. '\x1B[0m'
end

text_colors.b.magenta = function(text)
	return '\x1B[45m' .. text .. '\x1B[0m'
end

text_colors.b.cyan = function(text)
	return '\x1B[46m' .. text .. '\x1B[0m'
end

text_colors.b.white = function(text)
	return '\x1B[47m' .. text .. '\x1B[0m'
end

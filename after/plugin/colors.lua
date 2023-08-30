require('monokai').setup {}
require('monokai').setup { palette = require('monokai').pro }
require('monokai').setup { palette = require('monokai').soda }
require('monokai').setup { palette = require('monokai').ristretto }

function SetColor(color)
	color = color or "monokai"
	vim.cmd.colorscheme(color)
end

SetColor()

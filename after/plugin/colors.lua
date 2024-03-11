function SetColor(color)
	color = color or "monokai-pro-classic"
	vim.cmd.colorscheme(color)
end

SetColor()

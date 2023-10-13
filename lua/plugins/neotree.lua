local status, neotree = pcall(require, "neo-tree")

if not status then
	return
end

neotree.setup({
	window = {
		position = "float",
	},
  filesystem = {
    filtered_items = {
      hide_hidden = false
    }
  }
})

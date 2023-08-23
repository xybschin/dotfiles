local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new { cmd = "lazygit", hidden = true, direction = "float" }

function _lazygit_toggle()
    lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>og", "<cmd>lua _lazygit_toggle()<cr>", { noremap = true, silent = true })

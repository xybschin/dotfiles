local Terminal = require("toggleterm.terminal").Terminal
local lazydocker = Terminal:new { cmd = "lazydocker", hidden = true, direction = "float" }

function _lazydocker_toggle()
    lazydocker:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>od", "<cmd>lua _lazydocker_toggle()<cr>", { noremap = true, silent = true })

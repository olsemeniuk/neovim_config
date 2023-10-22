local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}

 dashboard.section.buttons.val = {
   dashboard.button("e", "  >  New file", ":ene <BAR> startinsert <CR>"),
   dashboard.button("r", "  >  Recently used files", ":Telescope oldfiles <CR>"),
   dashboard.button("f", "  >  Find file", ":Telescope find_files <CR>"),
   dashboard.button("c", "  >  Configuration", ":e ~/.config/nvim<CR>"),
}

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)

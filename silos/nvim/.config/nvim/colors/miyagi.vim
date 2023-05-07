let g:colors_name="miyagi"
lua package.loaded["miyagi"] = nil
lua require("lush")(require("miyagi").setup())

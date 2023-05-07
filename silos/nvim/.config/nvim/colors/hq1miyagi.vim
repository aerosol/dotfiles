set background=dark
let g:colors_name="hq1miyagi"
lua package.loaded["hq1miyagi"] = nil
lua require("lush")(require("hq1miyagi"))

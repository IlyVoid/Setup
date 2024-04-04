return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")

	dashboard.section.header.opts = { hl = { {"GreenHLGroup",0,12}, {"BlueHLGroup",13,20} } } 

    dashboard.section.header.val = {
      [[                 /|  /|  ---------------------------  ]],
      [[                 ||__||  |                         |  ]], 
      [[                /   O O\__  I have a horny little  |  ]], 
      [[               /          \   operating system     |  ]],
      [[              /      \     \                       |  ]],
      [[             /   _    \     \ ----------------------  ]],
      [[            /    |\____\     \      ||                ]],
      [[           /     | | | |\____/      ||                ]], 
      [[          /       \| | | |/ |     __||                ]],
      [[         /  /  \   -------  |_____| ||                ]],
      [[        /   |   |           |       --|               ]],
      [[        |   |   |           |_____  --|               ]],
      [[        |  |_|_|_|          |     \----               ]],
      [[        /\                  |                         ]],
      [[       / /\        |        /                         ]],
      [[      / /  |       |       |                          ]],
      [[  ___/ /   |       |       |                          ]],
      [[ |____/    c_c_c_C/ \C_c_c_c                         ]],
    }

    alpha.setup(dashboard.opts)
  end,
}

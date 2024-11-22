return   {
    "goolord/alpha-nvim",
    dependencies = { 'echasnovski/mini.icons', 'nvim-lua/plenary.nvim'},
    math.randomseed(os.time()),
    config = function()
        local theta = require("alpha.themes.theta")
        local dashboard = require("alpha.themes.dashboard")
        -- available: devicons, mini, default is mini
        -- if provider not loaded and enabled is true, it will try to use another provider
        theta.file_icons.provider = "mini" 

        theta.buttons.val = {
            { type = "text", val = "Actions", opts = { hl = "SpecialComment", position = "center" } },
            { type = "padding", val = 1 },
            dashboard.button("<leader>   f", "  File Explorer"),
            dashboard.button("<leader> p f", "󰈞  Find File"),
            dashboard.button("p b", "  Projects", ":Ex /home/kev/Code<Enter>"),
            dashboard.button("p s", "  Modify config", ":Ex /home/kev/.config/nvim/lua/kev<Enter>"),
            dashboard.button("<leader> p s", "  Manage plugins", ":Lazy<Enter>"),
            dashboard.button("q", "󰅚  Quit", ":qa<cr>"),
        }

        theta.section_mru = {
            {
            type = "group",
            val = {
                {
                    type = "text",
                    val = "Recent files",
                    opts = {
                        hl = "SpecialComment", 
                        shrink_margin = false,
                        position = "center",
                    },
                },
                { type = "padding", val = 1 },
                {
                    type = "group",
                    val = function()
                        return { theta.mru(0, vim.fn.getcwd(), 10) }
                    end,
                    opts = { shrink_margin = false },
                },
            }
            }
        }

        local quotes = {
            "Debugging becomes significantly easier if you first admit that you are the problem. – William Laeder",
            "The function of good software is to make the complex appear to be simple. – Grady Booch",
            "Measuring programming progress by lines of code is like measuring aircraft building progress by weight. – Bill Gates",
            "There are only two hard things in Computer Science: cache invalidation and naming things. — Phil Karlton",
            "If debugging is the process of removing software bugs, then programming must be the process of putting them in. — Edsger W. Dijkstra",
            "Computers are useless. They can only give you answers. — Pablo Picasso",
            "Programming is the new literacy. We must learn to read, write, and code. — Steve Jobs",
            "Java is to JavaScript what car is to carpet. – Chris Heilmann",
            "Good code is its own best documentation. – Steve McConnell",
            "Code is like humor. When you have to explain it, it’s bad. – Cory House",
            "Learning to code is useful no matter what your career ambitions are. – Arianna Huffington",
            "Programming languages, like pizzas, come in only two sizes: too big and too small. – Richard Pattis"
        }

        local cats = {
            {
                [[  ,-.       _,---._ __  / \  ]],
                [[ /  )    .-'       `./ /   \ ]],
                [[(  (   ,'            `/    /|]],
                [[ \  `-"             \'\   / |]],
                [[  `.              ,  \ \ /  |]],
                [[   /`.          ,'-`----Y   |]],
                [[  (            ;        |   ']],
                [[  |  ,-.    ,-'         |  / ]],
                [[  |  | (   |        hjw | /  ]],
                [[  )  |  \  `.___________|/   ]],
                [[  `--'   `--'                ]]
            },
            {
                [[                                                                         ]],
                [[                      /^--^\     /^--^\     /^--^\                       ]],
                [[                      \____/     \____/     \____/                       ]],
                [[                     /      \   /      \   /      \                      ]],
                [[KAT                 |        | |        | |        |                     ]],
                [[                     \__  __/   \__  __/   \__  __/                      ]],
                [[|^|^|^|^|^|^|^|^|^|^|^|^\ \^|^|^|^/ /^|^|^|^|^\ \^|^|^|^|^|^|^|^|^|^|^|^|]],
                [[| | | | | | | | | | | | |\ \| | |/ /| | | | | | \ \ | | | | | | | | | | |]],
                [[########################/ /######\ \###########/ /#######################]],
                [[| | | | | | | | | | | | \/| | | | \/| | | | | |\/ | | | | | | | | | | | |]],
                [[|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|]]
            },
            {
                [[                                  ]],
                [[                                  ]],
                [[        _..---...,""-._     ,/}/) ]],
                [[     .''        ,      ``..'(/-<  ]],
                [[    /   _      {      )         \ ]],
                [[   ;   _ `.     `.   <         a( ]],
                [[ ,'   ( \  )      `.  \ __.._ .: y]],
                [[(  <\_-) )'-.____...\  `._   //-' ]],
                [[ `. `-' /-._)))      `-._)))      ]],
                [[   `...'         hjw              ]],
                [[                                  ]]
            },
            {
                [[                 ]],
                [[ ,_     _        ]],
                [[ |\\_,-~/        ]],
                [[ / _  _ |    ,--.]],
                [[(  @  @ )   / ,-']],
                [[ \  _T_/-._( (   ]],
                [[ /         `. \  ]],
                [[|         _  \ | ]],
                [[ \ \ ,  /      | ]],
                [[  || |-_\__   /  ]],
                [[ ((_/`(____,-'   ]]

            },
            {
                [[                                                       ]],
                [[                                                       ]],
                [[                                                       ]],
                [[           __..--''``---....___   _..._    __          ]],
                [[ /// //_.-'    .-/";  `        ``<._  ``.''_ `. / // / ]],
                [[///_.-' _..--.'_    \                    `( ) ) // //  ]],
                [[/ (_..-' // (< _     ;_..__               ; `' / ///   ]],
                [[ / // // //  `-._,_)' // / ``--...____..-' /// / //    ]],
                [[                                                       ]],
                [[                                                       ]],
                [[                                                       ]]
            }
        }

        local layouts = {
            {
            { type = "padding", val = 1 },
            { type = "text", val = cats[math.random(1,5)], opts = { hl = "keyword", position = "center" } },
            { type = "padding", val = 2 },
            theta.buttons,
            { type = "padding", val = 1 },
            theta.section_mru[1],
            { type = "padding", val = 2 },
            { type = "text", val = quotes[math.random(1,12)], opts = { hl = "comment", position = "center" } },
            { type = "padding", val = 1}
            }
        }

        theta.config.layout = layouts[1]
        
        require'alpha'.setup(theta.config)
    end,
}

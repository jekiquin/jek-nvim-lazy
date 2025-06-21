return {
	-- add gruvbox
	{ "ellisonleao/gruvbox.nvim" },

	-- Configure LazyVim to load gruvbox
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox",
		},
	},

	-- configure bufferline
	{
		"akinsho/bufferline.nvim",
		keys = {
			{ "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next Buffer" },
			{ "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev Buffer" },
		},
	},

	-- configure formatter
	{
		"stevearc/conform.nvim",
		opts = function()
			return {
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "prettier", "prettierd" },
					javascriptreact = { "prettier", "prettierd" },
					typescript = { "prettier", "prettierd" },
					typescriptreact = { "prettier", "prettierd" },
					vue = { "prettier", "prettierd" },
					css = { "prettier", "prettierd" },
					scss = { "prettier", "prettierd" },
					less = { "prettier", "prettierd" },
					html = { "prettier", "prettierd" },
					json = { "prettier", "prettierd" },
					jsonc = { "prettier", "prettierd" },
					yaml = { "prettier", "prettierd" },
					markdown = { "prettier", "prettierd" },
					["markdown.mdx"] = { "prettier", "prettierd" },
					graphql = { "prettier", "prettierd" },
					handlebars = { "prettier", "prettierd" },
				},
			}
		end,
	},

  -- configure flash
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        char = {
          jump_labels = true
        }
      }
    }
  },

  -- configure snacks
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        ignored = true,
        sources = {
          files = {
            hidden = true,
            ignored = true,
            exclude = {
              "**/.git/*",
            }
          }
        }
      }
    }
  }
}

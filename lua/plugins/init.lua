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
		init = function()
			-- disable autoformat as it sometimes take too long
			vim.b.disable_autoformat = true
			vim.g.disable_autoformat = true
		end,
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
		keys = {
			{
				"<leader>cf",
				function()
					require("conform").format({
						bufnr = vim.api.nvim_get_current_buf(),
						timeout_ms = 10000,
						lsp_format = "fallback",
					})
				end,
				desc = "Format Buffer",
			},
		},
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
  }
}

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Add pyright to lspconfig
      -- pyright will be automatically installed with mason and loaded with lspconfig
      pyright = {},
      jsonls = {
        -- lazy-load schemastore when needed
        on_new_config = function(new_config)
          new_config.settings.json.schemas = new_config.settings.json.schemas or {}
          vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
        end,
        settings = {
          json = {
            format = {
              enable = true,
            },
            validate = { enable = true },
          },
        },
      },
      eslint = {
        settings = {
          -- helps eslint find the eslintrc when it's placed in a subfolder instead of the cwd root
          workingDirectories = { mode = "auto" },
          format = auto_format,
        },
      },
    },

    setup = {
      eslint = function()
        if not auto_format then
          return
        end

        local function get_client(buf)
          return LazyVim.lsp.get_clients({ name = "eslint", bufnr = buf })[1]
        end

        local formatter = LazyVim.lsp.formatter({
          name = "eslint: lsp",
          primary = false,
          priority = 200,
          filter = "eslint",
        })

        -- Use EslintFixAll on Neovim < 0.10.0
        if not pcall(require, "vim.lsp._dynamic") then
          formatter.name = "eslint: EslintFixAll"
          formatter.sources = function(buf)
            local client = get_client(buf)
            return client and { "eslint" } or {}
          end
          formatter.format = function(buf)
            local client = get_client(buf)
            if client then
              local diag = vim.diagnostic.get(buf, { namespace = vim.lsp.diagnostic.get_namespace(client.id) })
              if #diag > 0 then
                vim.cmd("EslintFixAll")
              end
            end
          end
        end

        -- register the formatter with LazyVim
        LazyVim.format.register(formatter)
      end,
    },
  },
}

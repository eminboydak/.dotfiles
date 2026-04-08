-- LSP server configurations
-- Groups: Web Development, Backend/Core, DevOps/Infrastructure, Database/Data, Systems/Specialized
-- Note: These servers are automatically installed via Mason.

return {
  -- Web Development (5 servers)
  ['ts_ls'] = {
    -- TypeScript/JavaScript/React/Next.js support
    settings = {},
  },
  ['html'] = {
    -- HTML language support
    settings = {},
  },
  ['cssls'] = {
    -- CSS language support
    settings = {},
  },
  ['tailwindcss'] = {
    -- Tailwind CSS framework support
    settings = {},
  },
  ['eslint'] = {
    -- JavaScript/TypeScript linting
    settings = {},
  },
  -- Backend/Core Languages (8 servers)
  ['lua_ls'] = {
    -- Lua development (for Neovim config)
    settings = {
      Lua = {
        completion = { callSnippet = 'Replace' },
      },
    },
  },
  ['pyright'] = {
    -- Python development
    settings = {},
  },
  ['rust_analyzer'] = {
    -- Rust development
    settings = {},
  },
  ['denols'] = {
    -- Deno TypeScript/JavaScript
    settings = {},
  },
  ['intelephense'] = {
    -- PHP development
    settings = {},
  },
  ['laravel_ls'] = {
    -- Laravel PHP framework
    settings = {},
  },
  ['matlab_ls'] = {
    -- MATLAB development
    settings = {},
  },
  ['prismals'] = {
    -- Prisma ORM
    settings = {},
  },
  -- DevOps/Infrastructure (4 servers)
  ['jsonls'] = {
    -- JSON language support
    settings = {},
  },
  ['yamlls'] = {
    -- YAML language support
    settings = {},
  },
  ['dockerls'] = {
    -- Dockerfile support
    settings = {},
  },
  ['docker_compose_language_service'] = {
    -- Docker Compose support
    settings = {},
  },
  -- Database/Data (2 servers)
  ['sqlls'] = {
    -- SQL language support
    settings = {},
  },
  ['postgres_lsp'] = {
    -- PostgreSQL support
    settings = {},
  },
  -- Systems/Specialized (5 servers)
  ['clangd'] = {
    -- C/C++ development
    settings = {},
  },
  ['bashls'] = {
    -- Bash scripting support
    settings = {},
  },
  ['qmlls'] = {
    -- Qt/C++ (QML) support
    settings = {},
  },
  ['vhdl_ls'] = {
    -- VHDL language support
    settings = {},
  },
  ['mdx_analyzer'] = {
    -- MDX support (React + Markdown)
    settings = {},
  },
}

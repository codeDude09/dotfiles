local eslint_d = require 'efmls-configs.linters.eslint_d'
local eslint_d_formatter = require 'efmls-configs.formatters.eslint_d'
local stylua = require 'efmls-configs.formatters.stylua'
local luacheck = require 'efmls-configs.linters.luacheck'
local rubocop = require 'efmls-configs.linters.rubocop'

local js_languages = {
  linter = eslint_d,
  formatter = eslint_d_formatter,
}

return {
  javascript = js_languages,
  javascriptreact = js_languages,
  typescript = js_languages,
  typescriptreact = js_languages,
  lua = {
    formatter = stylua,
    linter = luacheck,
  },
  ruby = {
    linter = rubocop
  }
}

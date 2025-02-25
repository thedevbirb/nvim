-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Do not use `gq` for LSP stuff. See https://neovim.io/doc/user/lsp.html
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    vim.bo[ev.buf].formatexpr = nil
    vim.bo[ev.buf].omnifunc = nil
  end,
})

vim.api.nvim_create_autocmd("filetype", {
  pattern = "markdown",
  callback = function()
    vim.api.nvim_set_option_value("textwidth", 80, { scope = "local" })
  end,
})

vim.api.nvim_create_autocmd("filetype", {
  pattern = "starlark",
  callback = function()
    vim.lsp.start({
      name = "starlark-rust",
      cmd = { "/Users/birb/.local/share/nvim/mason/packages/starlark-rust/bin/starlark", "--lsp" },
      root_dir = vim.fs.root(0, { ".git", "main.star" }),
    })
    vim.lsp.start({
      name = "kurtosis",
      cmd = { "/Users/birb/oss/vscode-kurtosis_kurtosis-tech/starlark-lsp/cmd/starlark-lsp/starlark-lsp", "start" },
      root_dir = vim.fs.root(0, { ".git", "main.star" }),
    })
  end,
})

-- Mapping of LaTeX commands to Unicode symbols
local latex_symbols = {
  ["\\alpha"] = "α",
  ["\\beta"] = "β",
  ["\\gamma"] = "γ",
  ["\\delta"] = "δ",
  ["\\epsilon"] = "ε",
  ["\\zeta"] = "ζ",
  ["\\eta"] = "η",
  ["\\theta"] = "θ",
  ["\\iota"] = "ι",
  ["\\kappa"] = "κ",
  ["\\lambda"] = "λ",
  ["\\mu"] = "μ",
  ["\\nu"] = "ν",
  ["\\xi"] = "ξ",
  ["\\omicron"] = "ο",
  ["\\pi"] = "π",
  ["\\rho"] = "ρ",
  ["\\sigma"] = "σ",
  ["\\tau"] = "τ",
  ["\\upsilon"] = "υ",
  ["\\phi"] = "φ",
  ["\\chi"] = "χ",
  ["\\psi"] = "ψ",
  ["\\omega"] = "ω",
  ["\\Gamma"] = "Γ",
  ["\\Delta"] = "Δ",
  ["\\Theta"] = "Θ",
  ["\\Lambda"] = "Λ",
  ["\\Xi"] = "Ξ",
  ["\\Pi"] = "Π",
  ["\\Sigma"] = "Σ",
  ["\\Upsilon"] = "Υ",
  ["\\Phi"] = "Φ",
  ["\\Psi"] = "Ψ",
  ["\\Omega"] = "Ω",

  -- Operators
  ["\\times"] = "×",
  ["\\div"] = "÷",
  ["\\pm"] = "±",
  ["\\mp"] = "∓",
  ["\\cdot"] = "⋅",
  ["\\ast"] = "∗",
  ["\\star"] = "⋆",
  ["\\circ"] = "∘",

  -- Relations
  ["\\leq"] = "≤",
  ["\\geq"] = "≥",
  ["\\neq"] = "≠",
  ["\\approx"] = "≈",
  ["\\equiv"] = "≡",
  ["\\propto"] = "∝",

  -- Arrows
  ["\\leftarrow"] = "←",
  ["\\rightarrow"] = "→",
  ["\\uparrow"] = "↑",
  ["\\downarrow"] = "↓",
  ["\\leftrightarrow"] = "↔",
  ["\\mapsto"] = "↦",

  -- Set symbols
  ["\\in"] = "∈",
  ["\\notin"] = "∉",
  ["\\subset"] = "⊂",
  ["\\subseteq"] = "⊆",
  ["\\supset"] = "⊃",
  ["\\supseteq"] = "⊇",
  ["\\cup"] = "∪",
  ["\\cap"] = "∩",
  ["\\emptyset"] = "∅",
  ["\\forall"] = "∀",
  ["\\exists"] = "∃",

  -- Miscellaneous
  ["\\infty"] = "∞",
  ["\\nabla"] = "∇",
  ["\\partial"] = "∂",
  ["\\angle"] = "∠",
  ["\\degree"] = "°",
  ["\\perp"] = "⊥",
  ["\\parallel"] = "∥",
  ["\\sqrt"] = "√",
}

-- Autocommand for real-time replacement
vim.api.nvim_create_autocmd("TextChangedI", {
  pattern = "*",
  callback = function()
    -- If we're coding in Lean4, don't do anything since their plugin already does this
    -- and it's better to not interfer
    if vim.bo.filetype == "lean" then
      return
    end

    local line = vim.api.nvim_get_current_line()
    local column = vim.api.nvim_win_get_cursor(0)[2]

    for latex, symbol in pairs(latex_symbols) do
      local start_column = column - #latex + 1
      if start_column > 0 then
        local before_cursor = line:sub(start_column, column)
        if before_cursor == latex then
          local new_line = line:sub(1, start_column - 1) .. symbol .. line:sub(column + 1)
          vim.api.nvim_set_current_line(new_line)
          vim.api.nvim_win_set_cursor(0, { vim.api.nvim_win_get_cursor(0)[1], start_column + 2 })
        end
      end
    end
  end,
})

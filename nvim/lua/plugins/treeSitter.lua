require'nvim-treesitter.configs'.setup {
    ensure_installed = { "bash", "c", "cmake", "cpp", "go", "haskell", "json", "julia", "lua",
    "make", "python", "rust", "vim", "yaml" },

    -- Install languages synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- List of parsers to ignore installing
    ignore_install = {},

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },

    indent = {
        enable = true,
    },
}

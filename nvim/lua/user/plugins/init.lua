return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "stonescript",  -- Добавляем наш парсер
      },
      highlight = {
        enable = true,
      },
    },
    config = function(_, opts)
      -- Сначала регистрируем кастомный парсер
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      parser_config.stonescript = {
        install_info = {
          url = "https://github.com/utyara3/StoneScript",
          files = { "src/parser.c" },
          branch = "main",
        },
        filetype = "stonescript",
      }
      
      -- Затем загружаем treesitter
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}

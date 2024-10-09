local options = {
    ensure_installed = {
        -- defaults 
        "vim",
        "lua",
        "vimdoc",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
      },
  
    highlight = {
      enable = true,
      use_languagetree = true,
    },
  
    indent = { enable = true },
  }
  
  return options

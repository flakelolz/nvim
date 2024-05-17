return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        ["rust-analyzer"] = {
          semanticHighlighting = {
            doc = {
              comment = {
                inject = {
                  enable = false,
                },
              },
            },
            nonStandardTokens = false,

            operator = {
              enable = false,
              specialization = {
                enable = true,
              },
            },
            punctuation = {
              enable = true,
              separate = {
                macro = {
                  bang = true,
                },
              },
              specialization = {
                enable = true,
              },
            },
            strings = {
              enable = false,
            },
          },
        },
      },
    },
  },
}

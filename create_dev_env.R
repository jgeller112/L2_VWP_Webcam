library("rix")

rix(
  date = "2025-01-14",
  r_pkgs = c(
    "svglite",
    "tidyverse",
    "formatR", 
    "flextable", 
    "knitr",
    "webshot2", 
    "webshot", 
    "networkD3",
    "buildmer",
    "tinytable",
    "quarto",
    "remotes",
    "janitor",
    "readxl",
    "here",
    "gtsummary",
    "geomtextpath",
    "permutes",
    "permuco",
    "cowplot",
    "foreach",
    "doParallel", 
    "ggokabeito"
  ),
  system_pkgs = c("quarto", "git", "pandoc", "ungoogled-chromium", "librsvg", "typst"),
  git_pkgs = list(
    list(
      package_name = "webgazer",
      repo_url = "https://github.com/jgeller112/webgazeR/",
      commit = "542c8cec5e64bd03decb8f0694816cba16d9a90d"
    )
  ),
tex_pkgs = c("amsmath", "ninecolors", "apa7", "scalerel", "threeparttable", "threeparttablex", "endfloat", "environ", "multirow", "tcolorbox", "pdfcol", "tikzfill", "fontawesome5", "framed", "newtx", "fontaxes", "xstring", "wrapfig", "tabularray", "siunitx", 
               "fvextra", "geometry","setspace", "fancyvrb", "anyfontsize"), 
  ide = "code",
  project_path = ".",
  overwrite = TRUE,
  print = TRUE
)

library("rix")

rix(
  date = "2025-01-14",
  r_pkgs = c(
    "svglite",
    "tidyverse",
    "networkD3", 
    "formatR", 
    "flextable",
    "webshot", 
    "webshot2", 
    "knitr",
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
  system_pkgs = c("quarto", "git", "pandoc", "librsvg", "typst"),
  git_pkgs = list(
    list(
      package_name = "webgazer",
      repo_url = "https://github.com/jgeller112/webgazeR/",
      commit = "f58d3d73fd3957d2455ba0f5f495f06e841e9e2d"
    )
  ),
tex_pkgs = c("amsmath", "ninecolors", "apa7", "scalerel", "threeparttable", "threeparttablex", "endfloat", "environ", "multirow", "tcolorbox", "pdfcol", "tikzfill", "fontawesome5", "framed", "newtx", "fontaxes", "xstring", "wrapfig", "tabularray", "siunitx", 
               "fvextra", "geometry","setspace", "fancyvrb", "anyfontsize"), 
  ide = "code",
  project_path = ".",
  overwrite = TRUE,
  print = TRUE
)

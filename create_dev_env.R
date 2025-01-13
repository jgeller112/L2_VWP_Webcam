
path_to_project="~/Documents/L2_VWP_Project"

rix(
  r_ver = "latest-upstream",
  r_pkgs = c(
    "svglite",
    "tidyverse",
    "tinytex",
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
    "ggokabeito"
  ),
  system_pkgs = c("quarto", "git", "pandoc", "ungoogled-chromium","librsvg"),
  git_pkgs = list(
    list(
      package_name = "webgazer",
      repo_url = "https://github.com/jgeller112/webgazeR/",
      commit = "c22a3e072cbf2240a718cd28f80b454fbaa3b905"
    )
  ),
  ide = "code",
  project_path = ".",
  overwrite = TRUE,
  print = TRUE
)

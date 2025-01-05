
path_to_project="~/Documents/L2_VWP_Project"

rix(
  r_ver = "latest",
  r_pkgs = c(
    "tidyverse",
    "flextable", 
    "knitr",
    "webshot2", 
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
  system_pkgs = c("quarto", "git"),
  git_pkgs = list(
    list(
      package_name = "webgazer",
      repo_url = "https://github.com/jgeller112/webgazeR/",
      commit = "c22a3e072cbf2240a718cd28f80b454fbaa3b905"
    )
  ),
  ide = "code",
  project_path = path_to_project,
  overwrite = TRUE,
  print = TRUE
)

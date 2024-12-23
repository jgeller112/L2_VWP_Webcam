rix(
  r_ver = "8c4dc69b9732f6bbe826b5fbb32184987520ff26",
  r_pkgs = c(
    "tidyverse",
    "knitr",
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
      commit = "1fa04e0ac649fc73843a05ed83d5e7c994c801fe"
    )
  ),
  ide = "other",
  project_path = path_to_project,
  overwrite = TRUE,
  print = TRUE
)

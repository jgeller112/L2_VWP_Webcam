# L2 Webcam Eye-tracking

This repository contains the data, materials, and code for our manuscript "Language Without Borders: A Step-by-Step Guide to Analyzing Webcam Eye-Tracking Data for L2 Research".

This repository contains the data and code described in our manuscript.

Authors:

- Jason Geller (drjasongeller@gmail.com)
- Yanina Prystauka
- Sarah Colby
- Julia Droulin

## Data


## Reproduce

To maximize reproducibility, we wrote our manuscript using [Quarto](https://quarto.org/), which allowed us to mix computational figures, text, and tables with the actual prose of the manuscript. This means that there's no need to rely on comments within code to identify the location of each appropriate result in the manuscript—all results are programmatically included when rendering the document.

### Nix/Rix

We use the {rix package} to create a stable version-specific library of R packages and the environment. This interfaces with nix. 

Below are the steps to reproduce the project with Nix

1. Make sure you have Nix and Rix installed

   - For pc: https://docs.ropensci.org/rix/articles/b1-setting-up-and-using-rix-on-linux-and-windows.html
   - For Mac: https://docs.ropensci.org/rix/articles/b2-setting-up-and-using-rix-on-macos.html
      - You will need to have Positron installed to reproduce the manuscript on mac https://positron.posit.co/

- in R:
```
install.packages(rix)
```
    
2. Download the repository from GitHub

3. Open `L2_VWP_Webcam.Rproj` to start new RStudio session

 - To start using this environment, open a terminal in RStudio and use the following Nix command:

```
nix-build
```

```
nix-shell
```

Once in the shell you can call Rstudio or Positron to open open up the correct enviroment for reproduceability

```
Rstudio or
```
###  Run locally with packages installed systemwide

Finally, it’s also possible to not use {rix} and instead run everything using R packages that you install systemwide.

0.  Install these preliminary things:

    - **R 4.4.1** (or later) and **RStudio**.

    - **Quarto 1.5.54** (or later).
      
    - **Typst** [https://github.com/typst/typst#installation]
    - Make sure these pacakges are installed and loaded: 
  
```
library(remotes) # install github repo
remotes::install_github("jgeller112/webgazeR")
```
```
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
  )
```

1.  Open `L2_VWP_Webcam.Rproj` to open a new RStudio project.

2.  Open `/_manuscript/L2_VWP_Webcam_ET.qmd`
3.  Run each chunk in the manuscript

*Note that some computations can take a long time, depending on computer performance etc*


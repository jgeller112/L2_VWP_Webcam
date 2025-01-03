# L2 Webcam Eye-tracking

This repository contains the data, materials, and code for our manuscript "Language Without Borders: A Step-by-Step Guide to Analyzing Webcam Eye-Tracking Data for L2 Research".

This repository contains the data and code described in our manuscript.

Authors:

- Jason Geller (drjasongeller@gmail.com)
- Yanina Prystauka
- Sarah Colby
- Julia Droulin

## Data

- All data for this manuscript can be found in the data folder (/data/L2). 

   - At the top level you will find these files: 

| **File Name**                            | **Version** | **Description**                                                                                 |
|------------------------------------------|-------------|-------------------------------------------------------------------------------------------------|
| `data_exp_196386-v5_questionnaire-3956.csv` | Version 5   | Demographic questions from participants.                                                      |
| `data_exp_196386-v5_questionnaire-7ac3.csv` | Version 5   | Eye-tracking-related questionnaire data.                                                      |
| `data_exp_196386-v5_questionnaire-f8mc.csv` | Version 5   | Consent forms from participants.                                                              |
| `data_exp_196386-v5_questionnaire-ng98.csv` | Version 5   | Eye-tracking questionnaire data for participants who failed calibration.                      |
| `data_exp_196386-v5_questionnaire-w1i9.csv` | Version 5   | Demographic questions for participants who failed calibration.                                |
| `data_exp_196386-v5_task-n2oy.csv`         | Version 5   | Task-related data (unspecified details).                                                      |
| `data_exp_196386-v5_task-scf6.csv`         | Version 5   | Trial-level data for the Visual World Paradigm (VWP).                                         |
| `data_exp_196386-v5_task-wrbu.csv`         | Version 5   | Headphone screener performance data.                                                          |
| `data_exp_196386-v5_task-zlmf.csv`         | Version 5   | Task-related data (unspecified details).                                                      |
| `data_exp_196386-v6_questionnaire-3956.csv` | Version 6   | Demographic questions from participants.                                                      |
| `data_exp_196386-v6_questionnaire-7ac3.csv` | Version 6   | Eye-tracking-related questionnaire data.                                                      |
| `data_exp_196386-v6_questionnaire-f8mc.csv` | Version 6   | Consent forms from participants.                                                              |
| `data_exp_196386-v6_questionnaire-ng98.csv` | Version 6   | Eye-tracking questionnaire data for participants who failed calibration.                      |
| `data_exp_196386-v6_questionnaire-w1i9.csv` | Version 6   | Demographic questions for participants who failed calibration.                                |
| `data_exp_196386-v6_task-n2oy.csv`         | Version 6   | Task-related data (unspecified details).                                                      |
| `data_exp_196386-v6_task-scf6.csv`         | Version 6   | Trial-level data for the Visual World Paradigm (VWP).                                         |
| `data_exp_196386-v6_task-wrbu.csv`         | Version 6   | Headphone screener performance data.                                                          |
| `data_exp_196386-v6_task-zlmf.csv`         | Version 6   | Task-related data (unspecified details).                                                      |

- The raw subfolder (/data/L2/raw) conatins all the eye tracking files (for each participant and each trial)
- Each data file has the following columns: 

| **Column Name**         | **Description**                                                                                              |
|--------------------------|------------------------------------------------------------------------------------------------------------|
| `0`                      | Placeholder column with no clear description (possibly an artifact from data processing).                  |
| `filename`               | The name of the file associated with the data entry.                                                      |
| `participant_id`         | Unique identifier for each participant in the study.                                                      |
| `spreadsheet_row`        | Row number in the original spreadsheet corresponding to this data entry.                                   |
| `time_stamp`             | Timestamp of the data recording in milliseconds or other time units.                                       |
| `time_elapsed`           | Total elapsed time since the start of the experiment.                                                     |
| `type`                   | start/stop/prediction                                                |
| `screen_index`           | Index of the screen where the data was recorded (useful for multi-screen setups).                          |
| `x_pred`                 | Predicted x-coordinate of the gaze on the screen.                                                         |
| `y_pred`                 | Predicted y-coordinate of the gaze on the screen.                                                         |
| `x_pred_normalised`      | Normalized x-coordinate of the gaze (scaled to the screen dimensions).                                     |
| `y_pred_normalised`      | Normalized y-coordinate of the gaze (scaled to the screen dimensions).                                     |
| `convergence`            | Measure of gaze convergence (e.g., quality or reliability of prediction).                                  |
| `face_conf`              | Confidence level for face detection during eye-tracking.                                                  |
| `zone_name`              | Name of the area of interest (AOI) or zone where the gaze is located.                                      |
| `zone_x`                 | x-coordinate of the top-left corner of the zone on the screen.                                             |
| `zone_y`                 | y-coordinate of the top-left corner of the zone on the screen.                                             |
| `zone_width`             | Width of the zone in screen units.                                                                         |
| `zone_height`            | Height of the zone in screen units.                                                                        |
| `zone_x_normalised`      | Normalized x-coordinate of the top-left corner of the zone.                                                |
| `zone_y_normalised`      | Normalized y-coordinate of the top-left corner of the zone.                                                |
| `zone_width_normalised`  | Normalized width of the zone.                                                                              |
| `zone_height_normalised` | Normalized height of the zone.                                                                             |


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


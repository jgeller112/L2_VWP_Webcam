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
| `data_exp_196386-v5_questionnaire-f8mc.csv` | Version 5   | Consent form response from participants.                                                              |
| `data_exp_196386-v5_questionnaire-ng98.csv` | Version 5   | Eye-tracking questionnaire data for participants who failed calibration.                      |
| `data_exp_196386-v5_questionnaire-w1i9.csv` | Version 5   | Demographic questions for participants who failed calibration.                                |
| `data_exp_196386-v5_task-n2oy.csv`         | Version 5   | Task-related data (unspecified details).                                                      |
| `data_exp_196386-v5_task-scf6.csv`         | Version 5   | Trial-level data for the Visual World Paradigm (VWP).                                         |
| `data_exp_196386-v5_task-wrbu.csv`         | Version 5   | Headphone screener performance data.                                                          |
| `data_exp_196386-v5_task-zlmf.csv`         | Version 5   | Task-related data (unspecified details).                                                      |
| `data_exp_196386-v6_questionnaire-3956.csv` | Version 6   | Demographic questions from participants.                                                      |
| `data_exp_196386-v6_questionnaire-7ac3.csv` | Version 6   | Eye-tracking-related questionnaire data.                                                      |
| `data_exp_196386-v6_questionnaire-f8mc.csv` | Version 6   | Consent form response from participants.                                                              |
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


# Reproducing the Manuscript

This repository contains all the resources needed to reproduce the manuscript associated with this project. To ensure maximum reproducibility, we used [Quarto](https://quarto.org/) for creating the manuscript. This allows computational figures, tables, and text to be programmatically included directly in the manuscript, ensuring that all results are seamlessly integrated into the document.

## Prerequisites

### Required Software
To reproduce the manuscript, you will need the following:

1. **Nix** - A package manager to create a stable environment.
2. **Rix** - An R package for managing reproducible environments with Nix.
3. **RStudio** or **Positron** - To run the R scripts and render the Quarto document.
5. **Quarto** - To compile the manuscript.
6. **apaQuarto** - APA manuscript template [https://github.com/wjschne/apaquarto/tree/main]

### Installation Guides

- **Nix and Rix**
  - For Windows and Linux: [Setup Guide](https://docs.ropensci.org/rix/articles/b1-setting-up-and-using-rix-on-linux-and-windows.html)
  - For macOS: [Setup Guide](https://docs.ropensci.org/rix/articles/b2-setting-up-and-using-rix-on-macos.html)

- **Positron** (macOS only): [Installation Guide](https://positron.posit.co/)

- **Rix** (in R):
  ```r
  install.packages("rix")
  ```

## Steps to Reproduce

### Nix/Rix

#### 1. Clone the Repository
Clone this repository to your local machine:
```bash
git clone https://github.com/your-repo-name.git
cd your-repo-name
```

#### 2. Open the Project
Open the R project file `L2_VWP_Webcam.Rproj` in RStudio or Positron.

#### 3. Build the Environment
Use Nix to set up the reproducible environment:
```bash
nix-build
nix-shell
```

Once in the shell, launch your IDE in the correct environment:
```bash
open -na Positron --args ~/path/to/L2_VWP_Webcam.Rproj
```
For RStudio, simply type:
```bash
rstudio
```


###  Run locally with packages installed systemwide

Finally, it’s also possible to not use {rix} and instead run everything using R packages that you install systemwide.

- Make sure the following is installed:

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

4.  Run each chunk in the manuscript

*Note that some computations can take a long time, depending on computer performance etc*


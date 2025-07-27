# L2 Webcam Eye-tracking

This repository contains the data, materials, and code for our manuscript "Language Without Borders: A Step-by-Step Guide to Analyzing Webcam Eye-Tracking Data for L2 Research". 

This paper is now published. Please cite: 

Geller, J., Prystauka, Y., Colby, S. E., & Drouin, J. R. (in press). Language without borders: A step-by-step guide to analyzing webcam eye-tracking data for L2 research. Research Methods in Applied Lingustics.

```
@article{geller2025language,
  author  = {Geller, Jason and Prystauka, Yevhen and Colby, Sarah E. and Drouin, Jonathan R.},
  title   = {Language without borders: A step-by-step guide to analyzing webcam eye-tracking data for L2 research},
  journal = {Research Methods in Applied Linguistics},
  year    = {in press}
}

```


Authors:

- Jason Geller (drjasongeller@gmail.com)
- Yanina Prystauka
- Sarah Colby
- Julia Droulin

## Overview

```
📦 L2_VWP_Webcam
├── 📁 .github
│   └── 📁 workflows
├── 📁 .project
├── 📁 _manuscript
├── 📁 data
├── 📄 .Rprofile
├── 📄 .gitignore
├── 📄 L2_VWP_Webcam.Rproj
├── 📄 README.md
├── 📄 Sankey_figure_code
├── 📄 create_dev_env.R
├── 📄 default.nix
├── 📄 grateful-refs.bib
├── 📄 grateful-report.html
├── 🔗 result 
```
- **`.github`**: yml files for creating the document and webpage
- **`.Rprofile`**: Configuration file for R sessions.
- **`.gitignore`**: Specifies files and directories for Git to ignore.
- **`L2_VWP_Webcam.Rproj`**: RStudio project file.
- **`README.md`**: Provides an overview of the project.
- **`create_dev_env.R`**: Script to set up the nix environment
- **`default.nix`**: Configuration file for the Nix package manager.
- **`.project`**: Project configuration file.
- **sankey_figure_code** (code to generate sankey figure from paper)
- **grateful-refs.bib** references for software used in paper
- **grateful-report.html** write-up for software used in paper


## Directories

- **`_extensions/`**: Contains extensions, including:
  - **`wjschne/apaquarto/`**

- **`_manuscript/`**: Manuscript-related files.
- **`data/`**: Directory for data files.


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

###  Trial data dictionary

- Trial-level files

  - `data_exp_196386-v5_task-scf6.csv`
  - `data_exp_196386-v6_task-scf6.csv`

#### Data Dictionary

| Column Name                 | Data Type   | Description                                                                 |
|-----------------------------|-------------|-----------------------------------------------------------------------------|
| **Event Index**             | Integer     | Unique identifier for each event or record.                                |
| **UTC Timestamp**           | Integer     | Unix timestamp in UTC for the event.                                       |
| **UTC Date and Time**       | Datetime    | Date and time in UTC.                                                      |
| **Local Timestamp**         | Integer     | Unix timestamp in the local timezone.                                      |
| **Local Timezone**          | String      | Offset from UTC for the local timezone.                                    |
| **Local Date and Time**     | Datetime    | Date and time in the local timezone.                                       |
| **Experiment ID**           | Integer     | Identifier for the experiment.                                             |
| **Experiment Version**      | Integer     | Version number of the experiment.                                          |
| **Tree Node Key**           | String      | Key referencing the structure of the experiment in the tool.               |
| **Repeat Key**              | String      | Indicates repeat instances within the same tree node, if applicable.       |
| **Schedule ID**             | Integer     | Identifier for the schedule used.                                          |
| **Participant Public ID**   | String      | Publicly visible participant ID.                                           |
| **Participant Private ID**  | String      | Privately stored participant ID for anonymization.                         |
| **Participant Starting Group** | String  | Starting group for counterbalancing or experimental design.                |
| **Participant Status**      | String      | Status of the participant in the experiment (e.g., "complete").            |
| **Participant Completion Code** | String  | Unique code provided upon completion of the experiment.                    |
| **Participant External Session ID** | String | External session ID for integration with external systems.                 |
| **Participant Device Type** | String      | Type of device used (e.g., "Desktop or Laptop").                           |
| **Participant Device**      | String      | Specific device model or description.                                      |
| **Participant OS**          | String      | Operating system of the participant's device (e.g., "Windows 10").         |
| **Participant Browser**     | String      | Browser used by the participant (e.g., "Chrome 131.0.0.0").                |
| **Participant Monitor Size** | String     | Dimensions of the participant's monitor in pixels (e.g., "1536x864").      |
| **Participant Viewport Size** | String    | Dimensions of the browser viewport in pixels.                              |
| **Checkpoint**              | String      | Indicates the experimental checkpoint (e.g., "Headphone Check Pass").      |
| **Room ID**                 | Integer     | Identifier for the room in multi-room designs.                             |
| **Room Order**              | Integer     | Order of the room within the experiment flow.                              |
| **Task Name**               | String      | Name of the task being performed.                                          |
| **Task Version**            | Integer     | Version of the task being executed.                                        |
| **Spreadsheet**             | String      | Indicates which spreadsheet is used for stimuli selection.                 |
| **Spreadsheet Name**        | String      | Name of the spreadsheet file.                                              |
| **Spreadsheet Row**         | Integer     | Row number in the spreadsheet used for the trial.                          |
| **Trial Number**            | Integer     | Sequential number of the trial within the task.                            |
| **Screen Number**           | Integer     | Number of the screen presented during the trial.                           |
| **Screen Name**             | String      | Name of the screen or display area.                                        |
| **Zone Name**               | String      | Name of the interactive zone on the screen.                                |
| **Zone Type**               | String      | Type of zone (e.g., "content_video", "continue_button").                   |
| **Reaction Time**           | Float       | Reaction time for the event in milliseconds.                               |
| **Reaction Onset**          | Float       | Onset time of the reaction.                                                |
| **Response Type**           | String      | Type of response (e.g., "continue_button").                                |
| **Response**                | String      | Content of the participant's response, if applicable.                      |
| **Attempt**                 | Integer     | Number of attempts made by the participant for this event.                 |
| **Correct**                 | Integer     | Indicates whether the response was correct (1 = correct, 0 = incorrect).   |
| **Incorrect**               | Integer     | Indicates whether the response was incorrect (1 = incorrect, 0 = correct). |
| **Dishonest**               | Integer     | Flag for dishonest responses, if applicable.                               |
| **X Coordinate**            | Float       | X-coordinate of the response or interaction point on the screen.           |
| **Y Coordinate**            | Float       | Y-coordinate of the response or interaction point on the screen.           |
| **Timed Out**               | Integer     | Indicates whether the participant timed out (1 = yes, 0 = no).             |
| **Randomise Blocks**        | String      | Specifies block randomization settings.                                    |
| **Randomise Trials**        | String      | Specifies trial randomization settings.                                    |
| **Display**                 | String      | Name of the display condition, if applicable.                              |
| **ANSWER**                  | String      | Content of the participant's answer, if applicable.                        |
| **tlpic, trpic, blpic, brpic** | String   | File names of the images presented in the top-left, top-right, bottom-left, and bottom-right positions. |
| **soundfile**               | String      | Name of the audio file played during the trial.                            |
| **eng_targetword**          | String      | English translation of the target word.                                    |
| **targetword**              | String      | Target word presented during the trial.                                    |
| **condition**               | String      | Condition for the trial (e.g., "TCUU-SPENG4").                             |
| **wordsetcode**             | String      | Code identifying the word set used in the trial.                           |
| **conditioncode**           | String      | Code identifying the specific condition.                                   |
| **subjectnum**              | Integer     | Subject number assigned to the participant.                                |

### Raw eye-tracking data
- The raw subfolder (/data/L2/raw) conatins all the eye tracking files (for each participant and each trial)

#### Data dictionary

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
| `zone_name`              | Name of the area of interest (AOI)                                   |
| `zone_x`                 | x-coordinate of the top-left corner of the zone on the screen.                                             |
| `zone_y`                 | y-coordinate of the top-left corner of the zone on the screen.                                             |
| `zone_width`             | Width of the zone in screen units.                                                                         |
| `zone_height`            | Height of the zone in screen units.                                                                        |
| `zone_x_normalised`      | Normalized x-coordinate of the top-left corner of the zone.                                                |
| `zone_y_normalised`      | Normalized y-coordinate of the top-left corner of the zone.                                                |
| `zone_width_normalised`  | Normalized width of the zone.                                                                              |
| `zone_height_normalised` | Normalized height of the zone.                                                                             |


# Reproducing the Manuscript


This repository contains all the resources needed to reproduce the manuscript associated with this project. To ensure maximum reproducibility, we used [Quarto](https://quarto.org/) for creating the manuscript. This allows computational figures, tables, and text to be programmatically included directly in the manuscript, ensuring that all results are seamlessly integrated into the document. We also provide a file called default.nix which contains the definition of the development environment that was used to work on the analysis. Reproducers can easily re-use the exact same environment by installing the Nix package manager and using the included default.nix file to set up the right environment.

## Video Tutorial

Here is a video tutorial showing you how to reproduce this manuscript: 

[![Reproduce Manuscript with Nix/Rix](https://img.youtube.com/vi/nb9NfGfwAwc/0.jpg)](https://www.youtube.com/watch?v=nb9NfGfwAwc)

## Prerequisites

### Required Software
To reproduce the manuscript, you will need the following if not using rix/nix:

1. **Git** - To get Github repos [https://git-scm.com/downloads]
2. **RStudio** or **Positron**  or **VS Code**- To run the R scripts and render the Quarto document.
3. **Quarto** - To compile the manuscript.
4. **apaQuarto** - APA manuscript template [https://github.com/wjschne/apaquarto/tree/main] (you should not have to download this if you download the repo as the _extension file contains all the files needed)

- **Positron**: [Installation Guide](https://positron.posit.co/)

## Steps to Reproduce

### Nix/Rix

#### Installation Guides

- **Nix and Rix**
  - For Windows and Linux: [Setup Guide](https://docs.ropensci.org/rix/articles/b1-setting-up-and-using-rix-on-linux-and-windows.html)
  - For macOS: [Setup Guide](https://docs.ropensci.org/rix/articles/b2-setting-up-and-using-rix-on-macos.html)

#### 1. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/jgeller112/L2_VWP_Webcam.git
cd L2_VWP_Webcam
```
- You can also clone the repository from Github using the SSH and opeining a project in RStudio/Positron. 
  
<img width="947" alt="Screenshot 2025-01-04 at 5 03 10 PM" src="https://github.com/user-attachments/assets/ffc9afd1-0d42-40e0-84b5-a62b95927791" />
 
#### 2. Open the Project
Open the R project file `L2_VWP_Webcam.Rproj` in RStudio or Positron.

#### 3. Build the Environment
Use Nix to set up the reproducible environment:
```
nix-build
```

```
nix-shell
```
Once in the shell, You can: 

1. Reproduce the manuscript

```
quarto render "~/_manuscript/L2_VWP_webcam_ET.qmd"
```


or 

2. Launch your IDE in the correct environment in run code and analyses:

- Positron
  - To use Positron from the shell you will need to make sure the correct path is set (see https://github.com/posit-dev/positron/discussions/4485#discussioncomment-10456159). Once this is done you can open Positron from the shell
  - If you are using Positron within WSL/Windows you need to download WSL for positron and direnv in Positron. 

```bash
positron
```
For RStudio (linux only), simply type:
```bash
rstudio
```

###  Run locally with packages installed systemwide

Finally, it’s also possible to forget {rix} and instead run everything using R packages that you install systemwide.

- Make sure the required software is installed above and you have the following packages:

  - R 4.4.1 (or later) and RStudio.

  - Quarto 1.5 (if you want typst document) if not 1.5 > 
 
```
# these are the packages nix uses to build the manuscript 
r_pkgs = c(
    "svglite",
    "tinytex", 
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
```

```
remotes::install_github("jgeller112/webgazeR")
library(webgazeR)
```

```
# install tinytex if generating latex pdf
tinytex::install_tinytex()
```

| Package     | Version     | Citation                                                                 |
|-------------|-------------|--------------------------------------------------------------------------|
| base        | 4.4.3       | R Core Team (2025)                                                       |
| cowplot     | 1.1.3       | Wilke (2024)                                                             |
| flextable   | 0.9.6       | Gohel and Skintzos (2024)                                                |
| foreach     | 1.5.2       | Microsoft and Weston (2022)                                              |
| gazer       | 0.1         | Geller et al. (2018)                                                     |
| ggokabeito  | 0.1.0       | Barrett (2021)                                                           |
| gt          | 0.11.1      | Iannone et al. (2024)                                                    |
| gtsummary   | 2.0.3       | Sjoberg et al. (2021)                                                    |
| here        | 1.0.1       | Müller (2020)                                                            |
| janitor     | 2.2.1       | Firke (2024)                                                             |
| knitr       | 1.50        | Xie (2014); Xie (2015); Xie (2025)                                       |
| optimx      | 2023.10.21  | Nash and Varadhan (2011); John C. Nash (2014)                           |
| permuco     | 1.1.3       | Frossard and Renaud (2021)                                               |
| permutes    | 2.8         | Voeten (2023)                                                            |
| remotes     | 2.5.0       | Csárdi et al. (2024)                                                     |
| rix         | 0.15.6      | Rodrigues and Baumann (2025)                                             |
| rmarkdown   | 2.29        | Xie, Allaire, and Grolemund (2018); Xie, Dervieux, and Riederer (2020); Allaire et al. (2024) |
| tidyverse   | 2.0.0       | Wickham et al. (2019)                                                    |
| tinytable   | 0.8.0       | Arel-Bundock (2025)                                                      |
| webgazeR    | 0.7.2       | Geller (2025)                                                            |

1. Download the repository from Github
   <img width="961" alt="Screenshot 2025-01-04 at 5 00 54 PM" src="https://github.com/user-attachments/assets/09523d6c-1a7a-435f-9dce-bb099df7adcd" />

2.  Open `L2_VWP_Webcam.Rproj` to open a new RStudio project.

2.  Open `/_manuscript/L2_VWP_Webcam_ET.qmd`

4.  Run each chunk in the manuscript

*Note that some computations can take a long time, depending on computer performance etc*


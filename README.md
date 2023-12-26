# Hong Kong Sector Package
This package contains the official sector files exclusively for use by controllers and observers at VATSIM HK. 

### Stable Versions
![tags](https://github.com/vatsimhk/Hong-Kong-Sector-Package/actions/workflows/main.yml/badge.svg)
| Version | Support |
| ------------- | ------------- |
| [2312 v1](https://github.com/vatsimhk/Hong-Kong-Sector-Package/releases/tag/2312)| ![00ff00](https://placehold.co/15x15/00ff00/00ff00.png) Latest |
| [2311 v1](https://github.com/vatsimhk/Hong-Kong-Sector-Package/releases/tag/2311)| ![#c5f015](https://placehold.co/15x15/c5f015/c5f015.png) Limited Support (S1/S2 ONLY) |
| [2310 v1](https://github.com/vatsimhk/Hong-Kong-Sector-Package/releases/tag/2310)| ![#c5f015](https://placehold.co/15x15/c5f015/c5f015.png) Limited Support (S1/S2 ONLY) |
| [2309 v1](https://github.com/vatsimhk/Hong-Kong-Sector-Package/releases/tag/2309)| ![f03c15](https://placehold.co/15x15/f03c15/f03c15.png) End of Life |

### Development Versions
| Version | Support |
| ------------- | ------------- |
| 2312dev | ![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) Upcoming/In Development |

## How Do I Install/Update the Package?
### Option 1: Via ZIP
Select the latest stable version in the table above, then scroll down below the changelog and click the first zip file to download (not source code). Extract it to a convenient location. When updates are released, download the new package, extract the new ZIP file and overwrite the files in your existing install. Please note that you may need to reconfigure certain settings by updating this way.
### Option 1: Automatic Installer (Recommended)
Download the latest version of the [Hong Kong Sector Installer](https://github.com/vatsimhk/Hong-Kong-Sector-Installer/releases/latest). Run the .exe and select "Install Sector Package". Select the folder you wish to store the data files in and click OK. The installer will auomatically download the latest version of the Sector Package from this github repository. Once installed, open EuroScope, navigate to where you installed the files and select "Hong Kong TOPSKY.prf" to open the default profile. You are now ready to start observing / controlling!

To update the package, run the installer again, select "Update Sector Package," then select the folder containing your sector package. The installer will check for updates from this github repository. If updates are found, it will download them and automatically merge them with your personal settings. If conflicts are detected, the installer will prompt you and resolve them automatically, or you can choose to resolve the conflicts manually (recommended for experienced controllers only).

### Option 2: Via Git
If you are technically inclined, you can install the sector package by cloning the github repository, allowing you to receive seamless updates. First, install [Git for Windows](https://git-scm.com/download/win) by downloading and running their installer. Navigate to your EuroScope folder, right click anywhere in the explorer menu and click "Open in Terminal," then run the following commands:  

`git clone https://github.com/vatsimhk/Hong-Kong-Sector-Package.git`  
`cd Hong-Kong-Sector-Package`  
  
To update the package, simply open the Terminal again and run these commands:  
  
`git checkout main`  
`git pull --rebase --autostash`  

This will automatically install updates without affecting your other personal settings.  

### Option 3: Source Code ZIP (Not Recommended)
If the above options do not work, you can manually install the files using a zip install. Select the latest stable version in the table above, then scroll down below the changelog and click source code .zip file to download it. Extract it to a convenient location. When updates are released, download the new package, extract the new ZIP file and overwrite the files in your existing install. Please note that you may need to reconfigure certain settings by updating this way.
  
### Other Installation Notes
- To ensure all lists and text display correctly, install the custom EuroScope font by double clicking the .ttf file provided.
- Three different colour profiles are available, double click on a .vbs file to update the settings (requires EuroScope restart to take effect).

## What is the Legacy Package?
The Legacy Package was developed to support older controllers who are not comfortable using the new plugins. **The Legacy Package will be deprecated from release 2401 v1**. All controllers should transition to using the TopSky profile as soon as possible. See the transition document pinned in the controller-chat channel in the discord for more details.

## Some of the plugins failed to Load on startup!
If you get an error on load, please install the [latest C++ redistributables](https://aka.ms/vs/17/release/vc_redist.x86.exe). The newly added plugins are compiled with newer C++ Libraries that you may or may not have already installed.

## How Do I Report a Bug?
You can create an [issue](https://github.com/vatsimhk/Hong-Kong-Sector-Package/issues) with a brief description of the bug/problem and I will address it for the next release.

## How Do I Contribute?
All vACC certified controllers and staff members are allowed to contribute to the sector file. Please dm me on discord or email [j.wai@vathk.com](mailto:j.wai@vathk.com) with your github username and your vatsim CID so I can verify your account. **Contributions from unverified accounts will not be accepted.**

At the beginning of each cycle, a branch will be created for the next AIRAC cycle, and the .sct and .ese sector names will be changed to XXXXdev (e.g. 2203dev) to show that the package is not an official release. All PRs should be submitted to this new branch. When that AIRAC cycle becomes active, the sector names will remove the 'dev' suffix and be merged to the main branch. Thus, the main branch should be reserved for final releases only, that other controllers will download and use. It is not recommended to use the development branch for active controlling.

### Please be wary of comitting the following files:
- .prf files will contain your last session data, **including your VATSIM CID and Password.**
- Do not commit personal settings or customisations, such as screen layout, symbology/colours, custom tags, display settings, etc.
- .asr files will contain a personal directory to your computer, which should be removed before comitting.

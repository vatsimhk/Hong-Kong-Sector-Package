# Hong Kong Sector Package
This package contains the official sector files exclusively for use by controllers and observers at VATSIM HK. 

### Stable Versions
![tags](https://github.com/vatsimhk/Hong-Kong-Sector-Package/actions/workflows/main.yml/badge.svg)
| Version | Support |
| ------------- | ------------- |
| [2310 v1](https://github.com/vatsimhk/Hong-Kong-Sector-Package/releases/tag/2310)| ![00ff00](https://placehold.co/15x15/00ff00/00ff00.png) Latest |
| [2309 v1](https://github.com/vatsimhk/Hong-Kong-Sector-Package/releases/tag/2309)| ![f03c15](https://placehold.co/15x15/f03c15/f03c15.png) End of Life |
| [2307 v1](https://github.com/vatsimhk/Hong-Kong-Sector-Package/releases/tag/2307)| ![f03c15](https://placehold.co/15x15/f03c15/f03c15.png) End of Life |
| [2305 v1](https://github.com/vatsimhk/Hong-Kong-Sector-Package/releases/tag/2305)| ![f03c15](https://placehold.co/15x15/f03c15/f03c15.png) End of Life |

### Development Versions
| Version | Support |
| ------------- | ------------- |
| 2310dev | ![#1589F0](https://placehold.co/15x15/1589F0/1589F0.png) Upcoming/In Development |

## How Do I Install/Update the Package?
First, ensure that you have the **latest version of EuroScope installed**. You can install EuroScope [here](https://www.euroscope.hu/wp/installation/). Note that our package will NOT work with versions earlier than 3.2.2. You now have two options for installing the sector package:
### Option 1: Via ZIP
Select the latest stable version in the table above, then scroll down below the changelog and click the first zip file to download (not source code). Extract it to a convenient location. When updates are released, download the new package, extract the new ZIP file and overwrite the files in your existing install. Please note that you may need to reconfigure certain settings by updating this way.
### Option 2: Via Git
If you are technically inclined, you can install the sector package by cloning the github repository, allowing you to receive seamless updates. First, install [Git for Windows](https://git-scm.com/download/win) by downloading and running their installer. Navigate to your EuroScope folder, right click anywhere in the explorer menu and click "Open in Terminal," then run the following commands:  
  
`git clone https://github.com/vatsimhk/Hong-Kong-Sector-Package.git`  
`cd Hong-Kong-Sector-Package`  
  
To update the package, simply open the Terminal again and run these commands:  
  
`git checkout main`  
`git pull --rebase --autostash`  
  
This will automatically install updates without affecting your other personal settings.  
  
### Other Installation Notes
- To ensure all lists and text display correctly, install the custom EuroScope font by double clicking the .ttf file provided.
- Three different colour profiles are available, double click on a .vbs file to update the settings (requires EuroScope restart to take effect).

## What is the Legacy Package?
**Controllers are recommended to use the regular package to control,** as it contains many useful plugins that will enhance the controller experience. **ALL NEW trainees should begin training with the plugins.** However, to cater to older controllers who may not prefer the plugins, a legacy package will continue to be supported.

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

# Hong Kong Sector Package
This package contains the official sector files exclusively for use by controllers and observers at VATSIM HK. 

||Latest Version|
|---|---|
|Sector Package| ![GitHub release (with filter)](https://img.shields.io/github/v/release/vatsimhk/Hong-Kong-Sector-Package) |
|Sector Installer | ![GitHub release (with filter)](https://img.shields.io/github/v/release/vatsimhk/Hong-Kong-Sector-Installer) |

## How Do I Install/Update the Package?
### Option 1: Automatic Installer (Recommended)
To install the package:
1. Download the latest version of the [Hong Kong Sector Installer](https://github.com/vatsimhk/Hong-Kong-Sector-Installer/releases/latest/download/Hong-Kong-Sector-Installer.zip).
2. Run the .exe and select "Install Sector Package". Select the folder you wish to store the data files in and click OK. The installer will auomatically download the latest version of the Sector Package from this GitHub repository.
3. Optionally, select "Change Colour Theme" to select your desired colour scheme.
4. Open EuroScope, navigate to where you installed the files and select "Hong Kong TOPSKY.prf" to open the default profile. You are now ready to start observing / controlling!

To update the package:
1. Run the installer.exe.
2. Select "Update Sector Package," then select the folder containing your sector package.
3. The installer will check for updates from this GitHub repository. If updates are found, it will download them and automatically merge them with your personal settings.
4. If conflicts are detected, the installer will prompt you and resolve them automatically, or you can choose to resolve the conflicts manually (recommended for experienced controllers only).

### Option 2: Via Git
If you are technically inclined, you can install the sector package by cloning the GitHub repository, allowing you to receive seamless updates. First, install [Git for Windows](https://git-scm.com/download/win) by downloading and running their installer. Navigate to your EuroScope folder, right click anywhere in the explorer menu and click "Open in Terminal," then run the following commands:  

`git clone https://github.com/vatsimhk/Hong-Kong-Sector-Package.git`  
`cd Hong-Kong-Sector-Package`  
  
To update the package, simply open the Terminal again and run these commands:  
  
`git checkout main`  
`git pull --rebase --autostash`  

This will automatically install updates without affecting your other personal settings.  

### Option 3: Source Code ZIP (Not Recommended)
If the above options do not work, you can manually install the files using a ZIP install. Select the latest stable version in the table above, then scroll down below the changelog and click source code .zip file to download it. Extract it to a convenient location. When updates are released, download the new package, extract the new ZIP file and overwrite the files in your existing install. Please note that you may need to reconfigure certain settings by updating this way.

## Some of the plugins failed to load on startup!
If you get an error on load, please install the [latest C++ redistributables](https://aka.ms/vs/17/release/vc_redist.x86.exe). The newly added plugins are compiled with newer C++ Libraries that you may or may not have already installed.

## How Do I Report a Bug?
You can create an [issue](https://github.com/vatsimhk/Hong-Kong-Sector-Package/issues) with a brief description of the bug/problem and I will address it for the next release.

## How Do I Contribute?
All vACC certified controllers and staff members are allowed to contribute to the sector file. Please DM Justin Wai on Discord (@eightsmart) or email [j.wai@vathk.com](mailto:j.wai@vathk.com) with your GitHub username and your VATSIM CID for your account to be verified. **Contributions from unverified accounts will not be accepted.**

At the beginning of each cycle, a branch will be created for the next AIRAC cycle, and the .sct and .ese sector names will be changed to XXXXdev (e.g. 2402dev) to show that the package is not an official release. All PRs should be submitted to this new branch. When that AIRAC cycle becomes active, the sector names will remove the 'dev' suffix and be merged to the main branch. Thus, the main branch should be reserved for final releases only, that other controllers will download and use. It is not recommended to use the development branch for active controlling.

### Please be wary of comitting the following files:
- .prf files will contain your last session data, **including your VATSIM CID and Password.**
- Do not commit personal settings or customisations, such as screen layout, symbology/colours, custom tags, display settings, etc.
- .asr files will contain a personal directory to your computer, which should be removed before comitting.

# Hong Kong Sector Package
This package contains the official sector files exclusively for use by controllers and observers at VATSIM HK. 

## How Do I Install the Package?
First, ensure that you have the **latest beta version of EuroScope installed**. You can install EuroScope [here](https://www.euroscope.hu/install/EuroScopeSetup32.msi) and install the beta patch [here](https://www.euroscope.hu/wp/category/beta-release/). Note that our package will NOT work with just the stable version due to compatability issues.
Navigate to the [releases](https://github.com/vatsimhk/Hong-Kong-Sector-Package/releases) section, then scroll down below the changelog and click the first zip file to download (not source code). Extract and open EuroScope, then click on one of the profiles (.prf) to open it.
There are three colour profiles provided, you can select a different one by double clicking one of the .vbs script files then restarting EuroScope. Rest assured that these scripts are safe to run; the source is code is always available openly if you have doubts.

## What is the Legacy Package?
**Controllers are recommended to use the regular package to control,** as it contains many useful plugins that will enhance the controller experience. **ALL NEW trainees should begin training with the plugins.** However, to cater to older controllers who may not prefer the plugins, a legacy package without TopSky will continue to receive minimal updates. 

## Some of the plugins failed to Load on startup!
If you get an error on load, please install the [latest C++ redistributables](https://aka.ms/vs/17/release/vc_redist.x86.exe). The newly added plugins are compiled with newer C++ Libraries that you may or may not have already installed.

## Why is my font in EuroScope weird/Clearance box not filling?
That is because the EuroScope font is not installed. Double click on the file EuroscopeFont.ttf in the extracted folder and press install. 

## How Do I Report a Bug?
You can create an [issue](https://github.com/vatsimhk/Hong-Kong-Sector-Package/issues) with a brief description of the bug/problem and I will address it for the next release.

## How Do I Contribute?
All vACC certified controllers and staff members are allowed to contribute to the sector file. Please dm me on discord or email [j.wai@vathk.com](mailto:j.wai@vathk.com) with your github username and your vatsim CID so I can verify your account. **Contributions from unverified accounts will not be accepted.**

At the beginning of each cycle, a branch will be created for the next AIRAC cycle, and the .sct and .ese sector names will be changed to XXXXdev (e.g. 2203dev) to show that the package is not an official release. All PRs should be submitted to this new branch. When that AIRAC cycle becomes active, the sector names will remove the 'dev' suffix and be merged to the main branch. Thus, the main branch should be reserved for final releases only, that other controllers will download and use. It is not recommended to use the development branch for active controlling.

### Please be wary of comitting the following files:
- .prf files will contain your last session data, **including your VATSIM CID and Password.**
- Do not commit personal settings or customisations, such as screen layout, symbology/colours, custom tags, display settings, etc.
- .asr files will contain a personal directory to your computer, which should be removed before comitting.

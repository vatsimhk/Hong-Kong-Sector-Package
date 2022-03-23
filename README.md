# Hong Kong Sector Package
This package contains the official sector files exclusively for use by controllers at VATSIM HK. 

## How Do I Download the Package?
Navigate to the [releases](https://github.com/vatsimhk/Hong-Kong-Sector-Package/releases) section, then scroll down below the changelog and click the first zip file to download (not source code). Extract and open Euroscope as normal. **sectors.vatsim.hk will soon be deprecated and will NOT receive further updates.**

## What is the Difference Between Standard and TopSky Profiles?
**All new controllers are recommended to use Hong Kong Topsky.prf to control,** as it contains many useful plugins that will enhance the controller experience. However, to cater to different controller preferences, both TopSky and non TopSky profiles will continue to receive updates. Before AIRAC 2203, the non TopSky profiles were stored in a separate "Standard Profiles" folder. However, this nested folder layout required lots of duplicate files since the profiles could not share data. So while they may require different ASRs, the same ATIS audio files had to be stored twice, for example. From AIRAC 2203, the structure is reorganised - all profiles are be stored in the root folder, and the relevant data files can be shared in the Data folder if applicable. Non TopSky profiles will have a 'Standard' prefix added to them.

## How Do I Report a Bug?
You can create an [issue](https://github.com/vatsimhk/Hong-Kong-Sector-Package/issues) with a brief description of the bug/problem and I will address it for the next release.

## How Do I Contribute?
All vACC certified controllers and staff members are allowed to contribute to the sector file. Please dm me on discord or email [j.wai@vatsim.hk](mailto:j.wai@vatsim.hk) with your github username and your vatsim CID so I can verify your account. **Contributions from unverified accounts will not be accepted.**

At the beginning of each cycle, a branch will be created for the next AIRAC cycle, and the .sct and .ese sector names will be changed to XXXXdev (e.g. 2203dev) to show that the package is not an official release. All PRs should be submitted to this new branch. When that AIRAC cycle becomes active, the sector names will remove the 'dev' suffix and be merged to the main branch. Thus, the main branch should be reserved for final releases only, that other controllers will download and use. It is not recommended to use the development branch for active controlling.

### Please be wary of comitting the following files:
- .prf files will contain your last session data, **including your VATSIM CID and Password.**
- Do not commit personal settings or customisations, such as screen layout, symbology/colours, custom tags, display settings, etc.
- .asr files will contain a personal directory to your computer, which should be removed before comitting.

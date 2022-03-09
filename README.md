# Hong-Kong-Sector-Package
This package contains the official sector files for controllers at VATSIM HK. 

# Contributing
At the beginning of each cycle, a branch will be created for the next AIRAC cycle, and the .sct and .ese sector names will be changed to XXXXdev (e.g. 2203dev) to show that the package is not an official release. All commits and PRs should be submitted to this new branch. When that AIRAC cycle beccomes active, the sector names will remove the 'dev' suffix and be merged to the main branch. Thus, the main branch should be reserved for final releases only, that other controllers will download and use.
All vACC staff members are welcome to submit updates and PRs. 

# Standard and TopSky Profiles
In an effort to cater to different controller preferences, both TopSky and non TopSky profiles should continue to receive updates. Before AIRAC 2203, a the non TopSky profiles were stored in a separate "Standard Profiles" folder. However, this nested folder layout required lots of duplicate files since the profiles could not share data. So while they may require different ASRs, the same ATIS audio files had to be stored twice, for example. From AIRAC 2203, the structure will be reorganised - all profiles will be stored in the root folder, and the relevant data files can be shared in the Data folder if applicable. Non TopSky profiles will have a 'Standard' prefix added to them - see the 2203 branch for details.

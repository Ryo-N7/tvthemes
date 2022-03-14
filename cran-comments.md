## Minor patch:
* New palette: 
  * Steven Universe (31 variants based on different Gem characters)
* Remove {glue} package as a dependency
* Imgur links for plot examples are replaced with direct links to printed images in man/ folder. 
  * This has caused `doc`, `help` directory to grow to over 2Mb (see below NOTE)

## Test environments
* local Windows 10 x64 install, R 4.0.5
* Ubuntu Linux 20.04.1 (R-Hub), R 4.1.2
* Fedora Linux, R-devel, clang, gfortran (R-Hub)
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 notes

* checking installed package size ... NOTE
  installed size is  7.9Mb
  sub-directories of 1Mb or more:
    doc     2.2Mb
    fonts   2.3Mb
    help    2.9Mb

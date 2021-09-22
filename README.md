
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tvthemes 1.1.0 <img src="man/figures/logo.png" align="right" style="padding-left:10px;background-color:white;" />

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/tvthemes)](https://CRAN.R-project.org/package=tvthemes)
[![Downloads](http://cranlogs.r-pkg.org/badges/tvthemes)](https://cran.r-project.org/package=tvthemes)
[![License: GPL
v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Coverage
status](https://codecov.io/gh/Ryo-N7/tvthemes/branch/master/graph/badge.svg)](https://codecov.io/gh/Ryo-N7/tvthemes?branch=master/)
[![R build
status](https://github.com/Ryo-N7/tvthemes/workflows/R-CMD-check/badge.svg)](https://github.com/Ryo-N7/tvthemes/actions)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/O4O342A2A)
<!-- badges: end -->

[Ryo Nakagawara | Twitter: `@R_by_Ryo`](https://twitter.com/R_by_Ryo/)

The `tvthemes` package is a collection of various `ggplot2` themes and
color/fill palettes based on everybody’s favorite TV shows. What
kick-started this whole package was my
[blogpost](https://ryo-n7.github.io/2019-02-15-visualize-brooklyn-nine-nine/)
looking at simple TV stats on my current favorite TV show, Brooklyn
Nine-Nine. I got a lot of good feedback on the colors I used for the
custom `ggplot2` theme and color palettes so I decided to expand it to
other shows that I love\! Suggestions and Pull Requests for
palettes/themes are welcome\!

  - [Package Website](https://ryo-n7.github.io/tvthemes/)
  - [Intro to `tvthemes 0.0.0.9100` blog
    post](https://ryo-n7.github.io/2019-05-16-introducing-tvthemes-package/)
  - [`tvthemes 1.0.0` & CRAN release blog
    post](https://ryo-n7.github.io/2019-09-06-tvthemes-CRAN-announcement/)
  - [`tvthemes 1.1.0` & CRAN release blog
    post](https://ryo-n7.github.io/2019-11-04-tvthemes-1.1.0-announcement/)

<!-- end list -->

``` r
library(tvthemes)
library(ggplot2)
library(extrafont)
#> Registering fonts with R
loadfonts(quiet = TRUE)

ggplot(mpg, aes(displ)) +
  geom_histogram(aes(fill = class), 
                 col = "black", size = 0.1,
                 binwidth = 0.1) +
  scale_fill_brooklyn99(palette = "Dark") +
  labs(title = "Do you know what it means to 'clap back', Raymond?",
       subtitle = glue::glue("BE- {emo::ji('clap')} -CAUSE {emo::ji('clap')} I {emo::ji('clap')} DO {emo::ji('clap')} !"),
       x = "Titles of Your Sex Tape",
       caption = "Pizza bagels? Pizza rolls? Pizza poppers? Pizzaritos? Pizza pockets?") +
  theme_brooklyn99(title.font = "Titillium Web",
                   text.font = "Calibri Light",
                   subtitle.size = 14)
```

<img src="man/figures/README-b99header-1.png" width="70%" style="display: block; margin: auto;" />

## Current list of TV shows

  - **Avatar: The Last Airbender**: theme + palettes (Fire Nation, Water
    Tribe, Earth Kingdom, & Air Nomads)
  - **Brooklyn Nine-Nine**: theme + palettes (regular & dark)
  - **Game of Thrones/A Song of Ice & Fire**: ‘The Palettes of Ice &
    Fire’ (currently: Stark, Baratheon (Stannis), Lannister, Tully,
    Targaryen, Martell, Greyjoy, Tyrell, Arryn, Manderly)
  - **Rick & Morty**: theme + palette
  - **Parks & Recreation**: two themes (light & dark) + palette
  - **The Simpsons**: theme + palette
  - **Spongebob Squarepants**: theme + palette + background images
  - **Hilda**: Day, Dusk, Night themes + palettes
  - **Attack on Titan**: palette
  - **Kim Possible**: palette
  - **Big Hero 6**: palette
  - **Gravity Falls**: palette
  - *More in future releases…*
  - *Development branch*: TBD…

## Installation

You can install `tvthemes` by:

``` r
## install.packages(devtools)
## for development version:
devtools::install_github("Ryo-N7/tvthemes")

## v1.1.0 is available on CRAN!
install.packages("tvthemes")
```

Now available on [CRAN](https://CRAN.R-project.org/package=tvthemes)\!

## tvthemes 1.0.0 Major Changes

See
[vignette](https://ryo-n7.github.io/tvthemes/articles/tvthemes-1_0_0.html).

## Fonts & Colors

See
[vignette](https://ryo-n7.github.io/tvthemes/articles/fonts-and-colors.html).

# Examples

You can find the code for all the examples below in the [“Examples”
Vignette](https://ryo-n7.github.io/tvthemes/articles/examples.html) on
the [Package Website](https://ryo-n7.github.io/tvthemes/).

## Brooklyn Nine-Nine

![b99d](https://i.imgur.com/SjxWFXd.png)

![b99l](https://i.imgur.com/OHWQn2q.png)

## Spongebob Squarepants

![bobspog](https://i.imgur.com/cVHEADt.png)

![bobspogbkg](https://i.imgur.com/kpwgeRA.png)

## Game of Thrones: House Stark, Tully, Targaryen

![StarkTullyTargaryen](https://i.imgur.com/TRYevg9.png)

## Game of Thrones: House Tyrell, Lannister, Greyjoy

![TyrellLannisterGreyjoy](https://i.imgur.com/NUjriiF.png)

## Game of Thrones: Arryn, Manderly, Martell

![ArrynManderlyMartell](https://i.imgur.com/WfieMDW.png)

## Game of Thrones: Stannis Baratheon, The One True King

![stannis](https://i.imgur.com/GuCuzyr.png)

## The Simpsons

![simpsons](https://i.imgur.com/DFHVlJS.png)

## Rick and Morty

![randm](https://i.imgur.com/YB7xSoe.png)

## Avatar: The Last Airbender (Fire Nation, Air Nomads, Water Tribe, Earth Kingdom)

![tla](https://i.imgur.com/JA4hEbJ.png)

## Parks and Recreation

![pandr](https://i.imgur.com/9641myM.png)

## Attack on Titan

![aot](https://i.imgur.com/BsLsWPX.png)

## Kim Possible

![KimPossible](https://i.imgur.com/2p9Jf8o.png)

## Big Hero 6

![bighero6](https://i.imgur.com/ww197w4.png)

## Hilda

![hilda](https://i.imgur.com/J9uv7hV.png)

## Gravity Falls

![gravityfall](https://i.imgur.com/Gl83AXz.png)

# Contributing

Please note that the `tvthemes` project is released with a [Contributor
Code of
Conduct](https://github.com/Ryo-N7/tvthemes/blob/master/CODE_OF_CONDUCT.md).
By contributing to this project, you agree to abide by its terms.

# License

This code is released under the GPL v3 License - see the
[LICENSE.md](https://github.com/Ryo-N7/tvthemes/blob/master/LICENSE.md)
file for details.

# Credits

Inspired by [Matt Oldach](https://twitter.com/MattOldach/)‘s
[{vaporwave}](https://github.com/moldach/vapoRwave/), [Bob
Rudis](https://twitter.com/hrbrmstr/)’
[{hrbrthemes}](https://github.com/hrbrmstr/hrbrthemes/), [Garrick
Aden-Buie](https://twitter.com/grrrck/)’s
[{ggpomological}](https://github.com/gadenbuie/ggpomological/), [Ewen
Henderson](https://twitter.com/ewen_/)’s
[{ghibli}](https://github.com/ewenme/ghibli/),
[rOpenSci](https://github.com/ropenscilabs/)’s
[{ochRe}](https://github.com/ropenscilabs/ochRe/), & [Nathan
Cunningham](http://www.nathancunn.com/2017-07-16-simpsons-characters/).

Hilda palettes from [Matt
Shanks](http://www.mattshanks.com.au/colour-palette-reference-hilda/)
and [ChevyRay](https://pbs.twimg.com/media/DoeR9edWwAMG2hW.png).

[“Some Time Later” font](https://github.com/ctrlcctrlv/some-time-later)
courtesy of Frederick Brennan.

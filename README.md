
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tvthemes 1.0.0 <img src="man/figures/logo.png" align="right" style="padding-left:10px;background-color:white;" />

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![License: GPL
v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Coverage
status](https://codecov.io/gh/Ryo-N7/tvthemes/branch/master/graph/badge.svg)](https://codecov.io/gh/Ryo-N7/tvthemes?branch=master)
<!-- badges: end -->

[Ryo Nakagawara | Twitter: `@R_by_Ryo`](https://twitter.com/R_by_Ryo)

**A lot has changed with `tvthemes 1.0.0` so please check the [tvthemes
1.0.0](#tvthemes-100-major-changes) section below rather than the
blogpost.**

The `tvthemes` package is a collection of various `ggplot2` themes and
color/fill palettes based on everybody’s favorite TV shows. What
kick-started this whole package was my
[blogpost](https://ryo-n7.github.io/2019-02-15-visualize-brooklyn-nine-nine/)
looking at simple TV stats on my current favorite TV show, Brooklyn
Nine-Nine. I got a lot of good feedback on the colors I used for the
custom `ggplot2` theme and color palettes so I decided to expand it to
other shows that I love\! You can also learn about `tvthemes` from the
introductory blog post on my website,
[here](https://ryo-n7.github.io/2019-05-16-introducing-tvthemes-package/).
Suggestions and Pull Requests for palettes/themes are welcome\!

``` r
mpg %>% 
  ggplot(aes(displ)) +
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

<img src="man/figures/README-unnamed-chunk-2-1.png" width="70%" style="display: block; margin: auto;" />

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
  - *More in future releases…*

## Installation

`tvthemes` is currently available only on Github, you can install it by:

``` r
## install.packages(devtools)
devtools::install_github("Ryo-N7/tvthemes")
```

I hope to have a CRAN version soon\!

## tvthemes 1.0.0 Major Changes

In addition to the new palettes and themes which you can see below in
the [Examples](#examples) section some of the code in `tvthemes` has
changed significantly.

In palettes for example, when you are calling the palette functions via
`scale_fill_*()` or `scale_color_*()` you now have a lot more options:

  - `palette`: If multiple available, select the palette: “Stannis”,
    “FireNation”, “Dusk”, etc. Leave blank if only single palette
    available.
  - `n`: Number of colors. If left blank it defaults to the total number
    of colors available in the palette.
  - `type`: “Discrete” or “Continuous”. NOTE: Most palettes are only
    optimized for “Discrete” at the present time.
  - `reverse`: Reverse order of colors. `TRUE`/`FALSE`

For TV shows with multiple palettes they are now organized under a
single “palette list” from which you pass the specific palette that you
want. If you want to check out the colors for these specific palettes:

``` r
## Previously:
scales::show_col(tvthemes:::lannister_palette)
scales::show_col(tvthemes:::brooklyn99_dark_palette)

## Now:
scales::show_col(tvthemes:::westeros_palette$Lannister)
scales::show_col(tvthemes:::brooklyn99_palette$Dark)
```

The specific palettes that changed are:

  - `Brooklyn Nine-Nine`: Default = “Regular”, “Dark”
  - `Avatar: The Last Airbender`: Default = “FireNation”,
    “EarthKingdom”, “WaterTribe”, “AirNation”
  - `Hilda`: Default = “Day”, “Dusk”, “Night”
  - `Game of Thrones/A Song of Ice & Fire`: Default = “Stark”,
    “Stannis”, “Tyrell”, “Lannister”, “Manderly”, “Martell”,
    “Arryn”, “Greyjoy”, “Targaryen”, “Tully”

<!-- end list -->

``` r
mpg %>% 
  ggplot(aes(displ)) +
  geom_histogram(aes(fill = class), col = "black", size = 0.1) +
  scale_fill_westeros(palette = "Stannis", n = 7, reverse = TRUE)
```

For themes the one change is a toggle option for axis ticks via `ticks`
which you can set to either `TRUE` and the default `FALSE`.

``` r
mpg %>% 
  ggplot(aes(displ)) +
  geom_histogram(aes(fill = class), col = "black", size = 0.1) +
  scale_fill_kimPossible(n = 5, reverse = FALSE) +
  theme_hildaDay(ticks = TRUE)
```

## Fonts

The difficulty with a lot of the fonts used by TV shows in their logos
and other paraphernalia is that they are made by font foundries and
therefore can be rather expensive (for a regular person like you or me)
to purchase. So I endeavored to find FREE fonts to use that were
somewhat similar to the real ones used by the shows from resources like
`Google Fonts`. In the documentation you can find the **actual** fonts
used by the TV shows if you are so inclined to buy them (some are just
my best guesses though)\! In some cases there were fan-made fonts such
as “Some Time Later” for Spongebob or “Akbar” for The Simpsons that I
included with the package.

Instead of dealing with `extrafont` yourself, I re-purposed the
`import_*()` functions from the `hrbrthemes` package so you can import
the included fonts very easily. Do note that you still might need to
install the fonts directly on your computer from the `.ttf` files found
in `inst/fonts`. When you’re done running the functions and installing
the `.ttf` files on your computer, load the `extrafont` library and then
run `loadfonts()`. If you’re having problems check out the documentation
on `extrafont`’s [Github repo](https://github.com/wch/extrafont) or on
[CRAN](https://cran.r-project.org/web/packages/extrafont/index.html).

The help files for each function tells you the recommended font names in
case you forget\! Besides the really custom stuff like for “The
Simpsons”, “Rick & Morty”, and “SpongeBob”, font preferences are
really up to you.

``` r
import_simpsons()         ## "Akbar" font
import_theLastAirbender() ## "Slayer" font
import_rickAndMorty()     ## "Get Schwifty" font
import_roboto_condensed() ## "Roboto Condensed" Google Font import from hrbrthemes
import_titillium_web()    ## "Titillium Web" Google Font import from hrbrthemes
import_spongeBob()        ## "Some Time Later" font
import_cinzel()           ## "Cinzel" font to use with 'The Palettes of Ice & Fire'
import_ChelseaMarket()    ## "Chelsea Market" font for "Hilda"

## install.packages("extrafont")
library(extrafont)
loadfonts() ## You need to do this at the beginning of a session.
```

## Colors

I gathered the colors/hex codes by looking at images online or
re-watching some old episodes and then using various hex code websites
and hex code extraction websites. The colors in some of these palettes
may still change from feedback and further experimentation.

You can check out all the colors for each palette by running
`scales::show_col(tvthemes:::name_of_palette)`. Some examples
below:

``` r
scales::show_col(tvthemes:::brooklyn99_palette$Dark)
```

<img src="man/figures/README-unnamed-chunk-8-1.png" width="70%" style="display: block; margin: auto;" />

``` r
scales::show_col(tvthemes:::westeros_palette$Lannister)
```

<img src="man/figures/README-unnamed-chunk-8-2.png" width="70%" style="display: block; margin: auto;" />

``` r
scales::show_col(tvthemes:::simpsons_palette)
```

<img src="man/figures/README-unnamed-chunk-8-3.png" width="70%" style="display: block; margin: auto;" />

## Examples

### Brooklyn Nine-Nine

``` r
mpg %>% 
  ggplot(aes(displ)) +
  geom_histogram(aes(fill = class), col = "black", size = 0.1) +
  scale_fill_brooklyn99() +
  labs(title = "Captain Wuntch. Good to see you.",
       subtitle = "But if you're here, who's guarding Hades?",
       caption = "Terry LOVES ggplot2!") +
  theme_brooklyn99(text.font = "Calibri Light",
                   title.font = "Roboto Condensed", 
                   legend.font = "Calibri Light")
```

<img src="man/figures/README-unnamed-chunk-9-1.png" width="70%" style="display: block; margin: auto;" />

### Spongebob Squarepants

``` r
bobspog_plot <- mpg %>% 
  ggplot(aes(displ)) +
  geom_histogram(aes(fill = class), col = "black", size = 0.1) +
  scale_fill_spongeBob() +
  labs(title = "F is for Fire that burns down the whole town!",
       subtitle = "U is for Uranium... bombs! N is for No survivors when you're-",
       caption = "Plankton, those things aren't what fun is about!") +
  theme_spongeBob(title.font = "Some Time Later",
                  text.font = "Some Time Later",
                  title.size = 22,
                  subtitle.size = 16,
                  axis.title.size = 16,
                  axis.text.size = 14,
                  legend.title.size = 14)

bobspog_plot
```

<img src="man/figures/README-unnamed-chunk-10-2.png" width="70%" style="display: block; margin: auto;" />

``` r

## use a themed background! Inspired by ggpomological::paint_pomological()!
paintBikiniBottom(plot = bobspog_plot,
                  background = "background") 
```

<img src="man/figures/README-unnamed-chunk-10-1.png" width="70%" style="display: block; margin: auto;" />

### Game of Thrones: House Stark, Lannister, Targaryen

``` r
mpg %>% 
  ggplot(aes(displ)) +
  geom_histogram(aes(fill = class), col = "black", size = 0.1) +
  labs(title = "The winters are hard, but the Starks will endure.",
       subtitle = "We always have...",
       caption = "Winter Is Coming...") +
  scale_y_continuous(expand = c(0,0)) +
  scale_x_continuous(expand = c(0,0)) +
  scale_fill_westeros(palette = "Stark") +
  theme_minimal() +
  theme(text = element_text(family = "Cinzel", size = 14)) -> stark

ggplot(diamonds, aes(price, fill = cut)) +
  geom_histogram(binwidth = 500) +
  scale_fill_westeros(palette = "Tully", n = 5) +
  labs(title = "I've seen wet shits I like better than Walder Frey.",
       subtitle = "Pardon my lord, my lady. I need to find a tree to piss on.",
       caption = "- The Blackfish") +
  theme_minimal() +
  theme(text = element_text(family = "Cinzel", size = 10),
        title = element_text(family = "Cinzel", size = 14)) -> tully

gapminder::gapminder %>% 
  ggplot(aes(x = log10(gdpPercap), y = lifeExp)) +
  geom_point(aes(color = continent)) + 
  scale_x_log10() +
  scale_color_westeros(palette = "Targaryen") +
  labs(title = "I am the blood of the dragon. I must be strong.",
       subtitle = "I must have fire in my eyes when I face them, not tears.",
       caption = "- Fire & Blood.") +
  theme_minimal() +
  theme(text = element_text(family = "Cinzel", size = 10),
        title = element_text(family = "Cinzel", size = 14)) -> targaryen

## patchwork together:
stark + tully - targaryen + plot_layout(ncol = 1)
```

<img src="man/figures/README-unnamed-chunk-11-1.png" width="70%" style="display: block; margin: auto;" />

### Game of Thrones: House Tyrell, Tully, Greyjoy

``` r
data <- gapminder::gapminder %>% 
  filter(country %in% c("France", "Germany", "Ireland", "Italy", "Japan", "Norway", "Belarus")) %>% 
  mutate(year = as.Date(paste(year, "-01-01", sep = "", format = '%Y-%b-%d')))

ggplot(data = data, aes(x = year, y = gdpPercap, fill = country)) +
  geom_area(alpha = 0.8) +
  scale_x_date(breaks = data$year, date_labels = "%Y") +
  scale_y_continuous(expand = c(0, 0), labels = scales::dollar) +
  scale_fill_westeros(palette = "Tyrell") +
  labs(title = "All men are fools, if truth be told, but",
       subtitle = "the ones in motley are more amusing than ones with crowns.",
       caption = "- The Queen of Thorns") +
  theme_minimal() +
  theme(text = element_text(family = "Cinzel", size = 10),
        plot.title = element_text(family = "Cinzel", size = 16),
        plot.subtitle = element_text(family = "Cinzel", size = 12)) -> tyrell

ggplot(diamonds, aes(price, fill = cut)) +
  geom_histogram(binwidth = 500) +
  labs(title = "You are done with whores.",
       subtitle = "The next one I find in your bed, I'll hang.",
       caption = "Rains of Castamere") +
  scale_fill_westeros(palette = "Lannister", n = 5, reverse = TRUE) +
  theme_minimal() +
  theme(text = element_text(family = "Cinzel", size = 14)) -> lannister

airquality %>% 
  mutate(Month = as.factor(Month)) %>% 
  ggplot(aes(x = Day, y = Temp, group = Month, color = Month)) +
  geom_line(size = 1.5) +
  scale_color_westeros(palette = "Greyjoy") +
  labs(title = "I am the storm, my lord.",
       subtitle = "The first storm, and the last.",
       caption = "- Euron 'The Crow's Eye' Greyjoy") +
  theme_minimal() +
  theme(text = element_text(family = "Cinzel", size = 10),
        title = element_text(family = "Cinzel", size = 14)) -> greyjoy

## patchwork together:
tyrell + lannister - greyjoy + plot_layout(ncol = 1)
```

<img src="man/figures/README-unnamed-chunk-12-1.png" width="70%" style="display: block; margin: auto;" />

### Game of Thrones: Arryn, Manderly, Martell

``` r
mpg %>% 
  ggplot(aes(displ)) +
  geom_histogram(aes(fill = class), col = "black", size = 0.1) +
  scale_fill_westeros(palette = "Arryn", n = 7) +
  labs(title = "The Seed is Strong.",
       subtitle = "The bad little man. Mother, can I make him fly?",
       caption = "I want to see him fly.") +
  theme_minimal() +
  theme(text = element_text(family = "Cinzel", size = 14),
        plot.title = element_text(family = "Cinzel", size = 18),
        legend.position = "none") -> arryn

airquality %>% 
  mutate(Month = as.factor(Month)) %>% 
  ggplot(aes(x = Day, y = Temp, group = Month, color = Month)) +
  geom_line(size = 1.5) +
  scale_color_westeros(palette = "Manderly", n = 6) +
  labs(title = "The North remembers Lord Davos. The North remembers...",
       subtitle = "The mummer's farce is almost done, my son is coming home.",
       caption = "When treating with liars, even an honest man must lie.") +
  theme_minimal() +
  theme(text = element_text(family = "Cinzel", size = 12),
        plot.title = element_text(family = "Cinzel", size = 14),
        legend.position = "none") -> manderly

data <- gapminder::gapminder %>% 
  filter(country %in% c("France", "Germany", "Ireland", "Italy", "Japan", "Norway", "Belarus", "Canada", "Mexico")) %>% 
  mutate(year = as.Date(paste(year, "-01-01", sep = "", format = '%Y-%b-%d')))

ggplot(data = data, aes(x = year, y = gdpPercap, fill = country)) +
  geom_area(alpha = 0.8) +
  scale_x_date(expand = c(0, 0),
               breaks = data$year, date_labels = "%Y") +
  scale_y_continuous(expand = c(0, 0), labels = scales::dollar) +
  scale_fill_westeros(palette = "Martell", n = 8) +
  labs(title = "What is our heart's desire? - Ariane Martell",
       subtitle = "Vengeance. Justice. Fire And Blood. - Doran Martell",
       caption = "Hiss with me Sand Snakes, HISSS!") +
  theme_minimal() +
  theme(text = element_text(family = "Cinzel", size = 10),
        plot.title = element_text(family = "Cinzel", size = 24),
        plot.subtitle = element_text(family = "Cinzel", size = 26),
        legend.position = "none") -> martell

## patchwork together:
arryn + manderly - martell + plot_layout(ncol = 1)
```

<img src="man/figures/README-unnamed-chunk-13-1.png" width="70%" style="display: block; margin: auto;" />

### Game of Thrones: Stannis Baratheon, The One True King

``` r
mpg %>% 
  ggplot(aes(displ)) +
  geom_histogram(aes(fill = class), col = "black", size = 0.1) +
  scale_fill_westeros(palette = "Stannis", n = 7, reverse = TRUE) +
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) +
  labs(title = glue("
                    We do not choose our destinies. 
                    Yet we must... we must do our duty, no? 
                    Great or small, we must do our duty."),
       subtitle = "I will have no burnings. Pray Harder.",
       caption = glue("
                      The Iron Throne is Mine by Right.
                      - Stannis Baratheon"),
       x = "Bent Knees", y = "Lightbringer") +
  theme_minimal() +
  theme(text = element_text(family = "Cinzel", size = 20),
        plot.title = element_text(family = "Cinzel", size = 26),
        plot.subtitle = element_text(size = 18),
        plot.caption = element_text(size = 16),
        axis.text = element_text(size = 18),
        legend.position = "none") 
```

<img src="man/figures/README-unnamed-chunk-14-1.png" width="70%" style="display: block; margin: auto;" />

### The Simpsons

``` r
data <- gapminder::gapminder %>% 
  filter(country %in% c("France", "Germany", "Ireland", "Italy", "Japan", "Norway", "Belarus")) %>% 
  mutate(year = as.Date(paste(year, "-01-01", sep = "", format='%Y-%b-%d')))

ggplot(data = data, aes(x = year, y = gdpPercap, fill = country)) +
  geom_area(alpha = 0.8) +
  scale_x_date(breaks = data$year, date_labels = "%Y") +
  scale_y_continuous(expand = c(0, 0), labels = scales::dollar) +
  scale_fill_simpsons() +
  labs(title = "The Simpsons",
       subtitle = "Theme inspired in part by @nathancunn's blog posts",
       caption = glue::glue("
                      A 'Bake 'em Away, Toys!' Production
                      Location: Sector 7G"),
       x = "Wel-diddly-elcome neighborino!",
       y = "Price of Duff Beer") +
  theme_simpsons(title.font = "Akbar",
                 text.font = "Akbar",
                 axis.text.size = 8)
```

<img src="man/figures/README-unnamed-chunk-15-1.png" width="70%" style="display: block; margin: auto;" />

### Rick and Morty

``` r
ggplot(diamonds, aes(price, fill = cut)) +
  geom_histogram(binwidth = 500) +
  scale_fill_rickAndMorty() +
  labs(title = "Dammit Morty, You Know Diamonds Aren't Forever Right?",
       subtitle = "They're blood diamonds, Morty **burp**",
       caption = "Wubbalubbadubdub!") +
  theme_rickAndMorty(title.font = "Get Schwifty",
                     text.font = "Get Schwifty",
                     title.size = 14)
```

<img src="man/figures/README-unnamed-chunk-16-1.png" width="70%" style="display: block; margin: auto;" />

### Avatar: The Last Airbender (Fire Nation, Air Nomads, Water Tribe, Earth Kingdom)

``` r
mpg %>% 
  ggplot(aes(displ)) +
  geom_histogram(aes(fill = class), col = "black", size = 0.1) +
  scale_fill_avatarTLA(palette = "FireNation") +
  labs(title = "Flameo, Hotman!",
       subtitle = "Fire. Wang Fire. This is my wife, Sapphire.",
       x = "Lion Vultures Owned",
       y = "Agni Kai Participation") +
  theme_theLastAirbender(title.font = "Slayer",
                         text.font = "Slayer") -> firenation

airquality %>% 
  mutate(Month = as.factor(Month)) %>% 
  ggplot(aes(x = Day, y = Temp, group = Month, color = Month)) +
  geom_line(size = 1.5) +
  scale_color_avatarTLA(palette = "AirNomads") +
  labs(title = "Let's head to the Eastern Air Temple!",
       subtitle = "Appa, Yip Yip!") +
  theme_theLastAirbender(title.font = "Slayer",
                         text.font = "Slayer",
                         title.size = 10) -> airnomads

gapminder::gapminder %>% 
  ggplot(aes(x = log10(gdpPercap), y = lifeExp)) +
  geom_point(aes(color = continent)) + 
  scale_x_log10() +
  scale_color_avatarTLA(palette = "WaterTribe") +
  labs(title = "I am thinking maybe we could... do an activity together?",
       subtitle = "... Do an activity?",
       x = "GDP per Otter-Penguins",
       y = "Life Expectancy of Arctic Camels") +
  theme_theLastAirbender(title.font = "Slayer",
                         text.font = "Slayer",
                         title.size = 8,
                         subtitle.size = 8) -> watertribe

mpg %>% 
  ggplot(aes(displ)) +
  geom_histogram(aes(fill = class), col = "black", size = 0.1) +
  scale_fill_avatarTLA(palette = "EarthKingdom") +
  labs(title = "There is no war in Ba Sing Se",
       subtitle = "(Welcome to Lake Laogai)") +
  theme_theLastAirbender(title.font = "Slayer",
                         text.font = "Slayer",
                         title.size = 14) -> earthkingdom

## plot together:
plot_grid(firenation, airnomads, watertribe, earthkingdom, ncol = 2)
```

<img src="man/figures/README-unnamed-chunk-17-1.png" width="70%" style="display: block; margin: auto;" />

### Parks and Recreation

``` r
airquality %>% 
  mutate(Month = as.factor(Month)) %>% 
  ggplot(aes(x = Day, y = Temp, group = Month, color = Month)) +
  geom_point(size = 4.5) +
  labs(title = "Calzones are pointless.", subtitle = "They're just pizza that's harder to eat!",
       caption = "No one likes them. Good day, sir.") + 
  scale_color_parksAndRec() + 
  theme_minimal() +
  theme_parksAndRec(text.font = "Titillium Web",
                    title.font = "Titillium Web Black",
                    legend.font = "Titillium Web") -> parksandrec

mpg %>% 
  ggplot(aes(displ)) +
  geom_histogram(aes(fill = class), col = "black", size = 0.1) +
  labs(title = "Parks & Recreation",
       subtitle = "Gotta Spend Money To Make Money!",
       caption = "And I spent... all of my money!") +
  scale_fill_parksAndRec() + 
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) +
  theme_minimal() +
  theme_parksAndRec_light(title.font = "Titillium Web Black",
                    text.font = "Titillium Web") -> parksandreclight

## plot together:
plot_grid(parksandrec, parksandreclight, ncol = 2)
```

<img src="man/figures/README-unnamed-chunk-18-1.png" width="70%" style="display: block; margin: auto;" />

### Attack on Titan

``` r
img <- png::readPNG("inst/backgrounds/aot-titan.png")

mpg %>% 
  ggplot(aes(displ)) +
  geom_histogram(aes(fill = rev(class)), col = "black", size = 0.1) +
  scale_fill_attackOnTitan(reverse = FALSE) +
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) +
  annotation_raster(img, xmin = 4.75, xmax = 7.75, 
                    ymin = 7, ymax = 33) +
  labs(title = "On That Day, Mankind Received A Grim Reminder.",
       subtitle = "Well, Sweet Mother Theresa on the Hood of a Mercedes Benz!",
       caption = "W-Well I'll Just Bertell You What I Berthold Him..") +
    theme_parksAndRec(text.font = "Roboto Condensed",
                      title.font = "Roboto Condensed")
```

<img src="man/figures/README-unnamed-chunk-19-1.png" width="70%" style="display: block; margin: auto;" />

### Kim Possible

``` r
data <- gapminder::gapminder %>% 
  filter(country %in% c("France", "Germany", "Ireland", "Italy", 
                        "Japan", "Norway", "Belarus", "United Kingdom",
                        "Peru", "Spain")) %>% 
  mutate(year = as.Date(paste(year, "-01-01", sep = "", format = '%Y-%b-%d')))

ggplot(data = data, aes(x = year, y = gdpPercap, fill = country)) +
  geom_area(alpha = 0.9) +
  scale_x_date(expand = c(0, 0),
               breaks = data$year, 
               date_labels = "%Y") +
  scale_y_continuous(expand = c(0, 0), labels = scales::dollar) +
  scale_fill_kimPossible() +
  labs(title = "What's The Sitch, Wade?",
       subtitle = glue::glue("Call Me {emo::ji('call')} Beep Me {emo::ji('pager')}  If You Wanna Reach Me {emo::ji('clap')} !"),
       caption = "Stoppable... What Are You Doing In My House??",
       x = "Year", y = "GDP per Capita") +
  theme_spongeBob(title.font = "Roboto Condensed",
                  text.font = "Roboto Condensed",
                  title.size = 24,
                  subtitle.size = 20,
                  text.size = 18,
                  legend.title.size = 14,
                  legend.text.size = 12,
                  ticks = TRUE)
```

<img src="man/figures/README-unnamed-chunk-20-1.png" width="70%" style="display: block; margin: auto;" />

### Big Hero 6

``` r
data <- gapminder::gapminder %>% 
  filter(country %in% c("France", "Germany", "Ireland", "Italy", 
                        "Japan", "Norway", "Finland", "United Kingdom")) %>% 
  mutate(year = as.Date(paste(year, "-01-01", sep = "", format = '%Y-%b-%d')))

ggplot(data = data, aes(x = year, y = gdpPercap, fill = country)) +
  geom_area(alpha = 0.9) +
  scale_x_date(expand = c(0, 0), breaks = data$year, date_labels = "%Y") +
  scale_y_continuous(expand = c(0, 0), labels = scales::dollar) +
  scale_fill_bigHero6() +
  labs(title = stringr::str_wrap("Welcome To The Nerd Lab.", width = 50),
       subtitle = "Villains Love Exposed Pipes, Beams, and Plastic Tarps!",
       caption = "*Fist Bump* Falalalalalala~",
       x = "Year", y = "GDP per Capita") +
  theme_spongeBob(title.font = "Roboto Condensed",
                  text.font = "Roboto Condensed",
                  title.size = 24,
                  subtitle.size = 20,
                  text.size = 18,
                  legend.position = "none") -> bigherobar

airquality %>% 
  mutate(Month = as.factor(Month)) %>% 
  ggplot(aes(x = Day, y = Temp, group = Month, fill = Month)) +
  geom_point(size = 4, stroke = 1.25, shape = 21) +
  labs(title = "Hiro, I Will Always Be With You.", 
       subtitle = "I'm Satisfied With My Care, Baymax.",
       caption = "Stop Whining, Woman Up!") + 
  scale_fill_bigHero6() + 
  theme_minimal() +
  theme(text = element_text(family = "Roboto Condensed"),
        plot.title = element_text(size = 20),
        plot.subtitle = element_text(size = 16),
        plot.caption = element_text(size = 14)) -> bigherodot

## plot together:
plot_grid(bigherobar, bigherodot, ncol = 2)
```

<img src="man/figures/README-unnamed-chunk-21-1.png" width="70%" style="display: block; margin: auto;" />

### Hilda

``` r
airquality %>% 
  mutate(Month = as.factor(Month)) %>% 
  ggplot(aes(x = Day, y = Temp, group = Month, color = Month)) +
  geom_line(size = 1.5) +
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) +
  scale_color_hilda(palette = "Day") +
  labs(title = "Well, that was pretty traumatic...",
       subtitle = "but such is the life of an adventurer!",
       caption = "I don't even have hands!!") +
    theme_hildaDay(ticks = TRUE,
                    legend.position = "none") -> hildaday

mpg %>% 
  ggplot(aes(displ)) +
  geom_histogram(aes(fill = rev(class)), col = "black", size = 0.1) +
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) +
  scale_fill_hilda(palette = "Dusk", reverse = TRUE) +
  labs(title = stringr::str_wrap("If you ask me all houses are basically the same. Roof, floors, walls...", width = 50),
       subtitle = "people saying STOP WALKING IN LIKE THAT WOODMAN!",
       caption = "I'm more of a writer than a fighter!") +
    theme_hildaDusk(ticks = TRUE,
                    legend.position = "none") -> hildadusk

airquality %>% 
  mutate(Month = as.factor(Month)) %>% 
  ggplot(aes(x = Day, y = Temp, group = Month, fill = Month)) +
  geom_point(size = 3, stroke = 1.25, shape = 21) +
  labs(title = "Could someone close that door,", 
       subtitle = "it's a little drafty in here...",
       caption = "I'm quite tall for an elf, actually.") + 
  scale_fill_hilda(palette = "Night", reverse = TRUE) +
  scale_x_continuous(expand = c(0.05, 0.02)) +
  scale_y_continuous(expand = c(0.05, 0.02)) +
  theme_hildaNight(ticks = TRUE) -> hildanight

plot_grid(hildaday, hildadusk, hildanight, ncol = 2)
```

<img src="man/figures/README-unnamed-chunk-22-1.png" width="70%" style="display: block; margin: auto;" />

## Contributing

Please note that the `tvthemes` project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.

## License

This code is released under the GPL v3 License - see the
[LICENSE.md](LICENSE.md) file for details.

## Credits

Inspired by [Matt Oldach](https://twitter.com/MattOldach/)‘s
[{vaporwave}](https://github.com/moldach/vapoRwave), [Bob
Rudis](https://twitter.com/hrbrmstr)’
[{hrbrthemes}](https://github.com/hrbrmstr/hrbrthemes), [Garrick
Aden-Buie](https://twitter.com/grrrck/)’s
[{ggpomological}](https://github.com/gadenbuie/ggpomological), [Ewen
Henderson](https://twitter.com/ewen_)’s
[{ghibli}](https://github.com/ewenme/ghibli), [rOpenSci]()’s
[{ochRe}](https://github.com/ropenscilabs/ochRe), & [Nathan
Cunningham](http://www.nathancunn.com/2017-07-16-simpsons-characters/).

Hilda palettes from [Matt
Shanks](http://www.mattshanks.com.au/colour-palette-reference-hilda/)
and [ChevyRay](https://pbs.twimg.com/media/DoeR9edWwAMG2hW.png).

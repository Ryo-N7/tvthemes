# tvthemes 1.3.0

* New palette: 
  * Steven Universe (31 variants based on different Gem characters)
* Remove {glue} package as a dependency
* Imgur links for plot examples are replaced with direct links to printed images in man/ folder

# tvthemes 1.2.0

* Add Github Actions
  * R-CMD-Check, codecov, build pkgdown
* Add license for 'Some Time Later' font
* Fix tests, re: check environment

# tvthemes 1.1.0

* New palette:
  * Gravity Falls
* New font:
  * "Gravitation Falls"
* Renamed functions to fit `*_camelCase()` style:
  * `import_titilliumWeb()`, `import_robotoCondensed()`, `import_chelseaMarket()`
* Renamed 'Avatar: The Last Airbender' functions:
  * `scale_*_avatar()`, `theme_avatar()`
* Deprecated functions:
  * `import_titillium_web()`, `import_roboto_condensed()`, `scale_*_avatarTLA()`,
  `theme_theLastAirbender()`
* Deleted functions:
  * `import_ChelseaMarket()` (replaced by `import_chelseaMarket()`)
* Added `{packagedown}` website
* Split README into vignettes
* Added more tests

# tvthemes 1.0.0

* Released on CRAN! (September 3rd, 2019)
* New palettes:
  * Kim Possible, Big Hero 6, Stannis Baratheon, House Manderly, House Martell, House Arryn, Hilda, & Attack on Titan
* New themes:
  * Hilda: Day, Dusk, & Night
* Increased functionality in all palette functions
  * `palette`, `n`, `type`, `reverse` options added
* TV shows with multiple palettes have a single function from which you call a specific palette:
  * `scale_color_westeros(palette = "Stannis")`
  * `scale_fill_avatarTLA(palette = "EarthKingdom")`
* Toggle ticks with `ticks = TRUE` or `ticks = FALSE`
* More tests added
* Improved documentation

# tvthemes 0.0.0.9100

* Corrected `title` in P&R, R&M, TLA themes to `plot.title`
* Fix swapped `axis.title.size` and `axis.text.size` in R&M theme
* Tests added for ALL defaults in `theme_*()` to prevent above bugs

# tvthemes 0.0.0.9000

* Initial release of package.
* __Avatar: The Last Airbender__: theme + palettes (Fire Nation, Water Tribe, Earth Kingdom, & Air Nomads)
* __Brooklyn Nine-Nine__: theme + palettes (regular & dark)
* __Game of Thrones/A Song of Ice & Fire__: 'The Palettes of Ice & Fire' (currently: Stark, Lannister, Tully, Targaryen, Greyjoy, & Tyrell)
* __Rick & Morty__: theme + palette
* __Parks & Recreation__: two themes (light & dark) + palette
* __The Simpsons__: theme + palette
* __Spongebob Squarepants__: theme + palette + background images

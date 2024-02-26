context("test-thelastairbender")

expect_eqNe <- function(...) expect_equal(..., check.environment=FALSE)
expect_equal_scales <- function(x, y, ...) {
  x <- as.list(x)
  y <- as.list(y)
  x$call <- y$call <- NULL
  expect_equal(x, y, ...)
}

test_that("theme_avatar works", {
  thm <- theme_avatar()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 10)
  expect_equal(thm$plot.title$size, 14)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 8)
  expect_equal(thm$axis.title$size, 10)
  expect_equal(thm$legend.text$size, 8)
  expect_equal(thm$legend.title$size, 10)
  ## color
  #expect_null(thm$text$colour)
  expect_null(thm$plot.title$colour)
  expect_equal(thm$plot.subtitle$colour, "grey20")
  expect_equal(thm$axis.text$colour, "grey20")
  expect_equal(thm$axis.title$colour, "grey20")
  expect_equal(thm$legend.text$colour, "grey20")
  expect_equal(thm$legend.title$colour, "grey20")
  expect_equal(thm$legend.position, "bottom")

  ## ticks == TRUE
  thm <- theme_avatar(ticks = TRUE)
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 10)
  expect_equal(thm$plot.title$size, 14)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 8)
  expect_equal(thm$axis.title$size, 10)
  expect_equal(thm$legend.text$size, 8)
  expect_equal(thm$legend.title$size, 10)
  ## ticks
  expect_equal(thm$axis.ticks$linewidth, 0.15)
  ## color
  #expect_null(thm$text$colour)
  expect_null(thm$plot.title$colour)
  expect_equal(thm$plot.subtitle$colour, "grey20")
  expect_equal(thm$axis.text$colour, "grey20")
  expect_equal(thm$axis.title$colour, "grey20")
  expect_equal(thm$legend.text$colour, "grey20")
  expect_equal(thm$legend.title$colour, "grey20")
  expect_equal(thm$legend.position, "bottom")
})

## FireNation
test_that("fireNation_pal raises warning with large number, x > 8", {
  ## new theme
  expect_warning(avatar_pal(palette = "FireNation")(9))
  expect_warning(avatar_pal(reverse = TRUE)(9))
  expect_error(avatar_pal(n = 9))
})

## WaterTribe
test_that("WaterTribe_pal raises warning with large number, x > 8", {
  expect_warning(avatar_pal(palette = "WaterTribe")(9))
  expect_warning(avatar_pal(reverse = TRUE)(9))
  expect_error(avatar_pal(n = 9))
})

# test_that("scale_colour_WaterTribe equals scale_color_WaterTribe", {
#   expect_equal_scales(scale_color_avatar(palette = "WaterTribe"), scale_colour_avatar(palette = "WaterTribe"))
# })
#
# test_that("scale_colour_WaterTribe works", {
#   expect_is(scale_color_avatar(palette = "WaterTribe"), "ScaleDiscrete")
# })
#
# test_that("scale_fill_WaterTribe works", {
#   expect_is(scale_fill_avatar(palette = "WaterTribe"), "ScaleDiscrete")
# })

## EarthKingdom
test_that("EarthKingdom_pal raises warning with large number, x > 9", {
  expect_warning(avatar_pal(palette = "EarthKingdom")(10))
  expect_warning(avatar_pal(reverse = TRUE)(10))
  expect_error(avatar_pal(n = 10))
})

# test_that("scale_colour_EarthKingdom equals scale_color_EarthKingdom", {
#   expect_equal_scales(scale_color_avatar(palette = "EarthKingdom"), scale_colour_avatar(palette = "EarthKingdom"))
# })
#
# test_that("scale_colour_EarthKingdom works", {
#   expect_is(scale_color_avatar(palette = "EarthKingdom"), "ScaleDiscrete")
# })
#
# test_that("scale_fill_EarthKingdom works", {
#   expect_is(scale_fill_avatar(palette = "EarthKingdom"), "ScaleDiscrete")
# })

## AirNomads
test_that("AirNomads_pal raises warning with large number, x > 8", {
  expect_warning(avatar_pal(palette = "AirNomads")(9))
})

# test_that("scale_colour_AirNomads equals scale_color_AirNomads", {
#   expect_equal_scales(scale_color_avatar(palette = "AirNomads"), scale_colour_avatar(palette = "AirNomads"))
# })
#
# test_that("scale_colour_AirNomads works", {
#   expect_is(scale_color_avatar(palette = "AirNomads"), "ScaleDiscrete")
# })
#
# test_that("scale_fill_AirNomads works", {
#   expect_is(scale_fill_avatar(palette = "AirNomads"), "ScaleDiscrete")
# })

## Colors are correct ----
test_that("The Last Airbender palette outputs correct colors", {
  expect_equal(avatar_pal(palette = "FireNation")(8),
               c(    "#ecb100", ## gold/yellowish
                     "#a10000", ## darker red
                     "#7E605E", ## lighish gray
                     "#FF4500", ## orangered
                     "#994823", ## brown-orange
                     "#4B4C4E", ## charcoal grey
                     "#572530", ## wine violet
                     "#000000"  ## black
               ))
  expect_equal(avatar_pal(palette = "AirNomads")(7),
               c(    "#ff9933", ## saffron
                     "#C24841", ## darker reddish-orange
                     "#FFFF33", ## lightyellow
                     "#8B5B45", ## skybison brown
                     "#87AFD1", ## light blue
                     "#EEB05A", ## lighter orange
                     "#DBC5A0"  ## skybison beige
               ))
  expect_equal(avatar_pal(palette = "EarthKingdom")(9),
               c(    "#015E05", ## greeen
                     "#B1A866", ## army green
                     "#7A5C12", ## khaki brown
                     "#646742", ## darker army green
                     "#25351C", ## swamp green
                     "#4C7022", ## khaki green
                     "#C7C45E", ## lime green
                     "#D2CFAB", ## beige-ish
                     "#FEFED8"  ## light yellow
               ))
  expect_equal(avatar_pal(palette = "WaterTribe")(8),
               c(    "#0047ab", ## cobalt
                     "#1DB4D3", ## turqoise
                     "#A2CAED", ## light blue
                     "#AFB5B8", ## light grey
                     "#120976", ## purple blue
                     "#fffafa", ## snow white
                     "#174D79", ## light teal blue
                     "#949BBC"  ## light purple
               ))
})


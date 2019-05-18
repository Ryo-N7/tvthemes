context("test-thelastairbender")

test_that("theme_theLastAirbender works", {
  thm <- theme_theLastAirbender()
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
})

## FireNation
test_that("fireNation_pal raises warning with large number, x > 8", {
  expect_warning(fireNation_pal()(9))
})

test_that("scale_colour_fireNation equals scale_color_fireNation", {
  expect_equal(scale_color_fireNation(), scale_colour_fireNation())
})

test_that("scale_colour_fireNation works", {
  expect_is(scale_color_fireNation(), "ScaleDiscrete")
})

test_that("scale_fill_fireNation works", {
  expect_is(scale_fill_fireNation(), "ScaleDiscrete")
})

## WaterTribe
test_that("waterTribe_pal raises warning with large number, x > 8", {
  expect_warning(waterTribe_pal()(9))
})

test_that("scale_colour_waterTribe equals scale_color_waterTribe", {
  expect_equal(scale_color_waterTribe(), scale_colour_waterTribe())
})

test_that("scale_colour_waterTribe works", {
  expect_is(scale_color_waterTribe(), "ScaleDiscrete")
})

test_that("scale_fill_waterTribe works", {
  expect_is(scale_fill_waterTribe(), "ScaleDiscrete")
})

## EarthKingdom
test_that("earthKingdom_pal raises warning with large number, x > 9", {
  expect_warning(earthKingdom_pal()(10))
})

test_that("scale_colour_earthKingdom equals scale_color_earthKingdom", {
  expect_equal(scale_color_earthKingdom(), scale_colour_earthKingdom())
})

test_that("scale_colour_earthKingdom works", {
  expect_is(scale_color_earthKingdom(), "ScaleDiscrete")
})

test_that("scale_fill_earthKingdom works", {
  expect_is(scale_fill_earthKingdom(), "ScaleDiscrete")
})

## AirNomads
test_that("airNomads_pal raises warning with large number, x > 7", {
  expect_warning(airNomads_pal()(8))
})

test_that("scale_colour_airNomads equals scale_color_airNomads", {
  expect_equal(scale_color_airNomads(), scale_colour_airNomads())
})

test_that("scale_colour_airNomads works", {
  expect_is(scale_color_airNomads(), "ScaleDiscrete")
})

test_that("scale_fill_airNomads works", {
  expect_is(scale_fill_airNomads(), "ScaleDiscrete")
})

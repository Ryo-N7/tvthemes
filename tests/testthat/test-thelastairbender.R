context("test-thelastairbender")

test_that("theme_theLastAirbender works", {
  thm <- theme_theLastAirbender()
  expect_s3_class(thm, "theme")
  expect_equal(thm$text$family, "")
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

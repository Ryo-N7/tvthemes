context("test-gameofthrones")

## House Stark
test_that("stark_pal raises warning with large number, x > 9", {
  expect_warning(stark_pal()(10))
})

test_that("scale_colour_stark equals scale_color_stark", {
  expect_equal(scale_color_stark(), scale_colour_stark())
})

test_that("scale_colour_stark works", {
  expect_is(scale_color_stark(), "ScaleDiscrete")
})

test_that("scale_fill_stark works", {
  expect_is(scale_fill_stark(), "ScaleDiscrete")
})

## House Lannister
test_that("lannister_pal raises warning with large number, x > 8", {
  expect_warning(lannister_pal()(9))
})

test_that("scale_colour_lannister equals scale_color_lannister", {
  expect_equal(scale_color_lannister(), scale_colour_lannister())
})

test_that("scale_colour_lannister works", {
  expect_is(scale_color_lannister(), "ScaleDiscrete")
})

test_that("scale_fill_lannister works", {
  expect_is(scale_fill_lannister(), "ScaleDiscrete")
})

## House Tyrell
test_that("tyrell_pal raises warning with large number, x > 9", {
  expect_warning(tyrell_pal()(10))
})

test_that("scale_colour_tyrell equals scale_color_tyrell", {
  expect_equal(scale_color_tyrell(), scale_colour_tyrell())
})

test_that("scale_colour_tyrell works", {
  expect_is(scale_color_tyrell(), "ScaleDiscrete")
})

test_that("scale_fill_tyrell works", {
  expect_is(scale_fill_tyrell(), "ScaleDiscrete")
})

## House Targaryen
test_that("targaryen_pal raises warning with large number, x > 7", {
  expect_warning(targaryen_pal()(8))
})

test_that("scale_colour_targaryen equals scale_color_targaryen", {
  expect_equal(scale_color_targaryen(), scale_colour_targaryen())
})

test_that("scale_colour_targaryen works", {
  expect_is(scale_color_targaryen(), "ScaleDiscrete")
})

test_that("scale_fill_targaryen works", {
  expect_is(scale_fill_targaryen(), "ScaleDiscrete")
})

## House Tully
test_that("tully_pal raises warning with large number, x > 7", {
  expect_warning(tully_pal()(8))
})

test_that("scale_colour_tully equals scale_color_tully", {
  expect_equal(scale_color_tully(), scale_colour_tully())
})

test_that("scale_colour_tully works", {
  expect_is(scale_color_tully(), "ScaleDiscrete")
})

test_that("scale_fill_tully works", {
  expect_is(scale_fill_tully(), "ScaleDiscrete")
})

## House Greyjoy
test_that("greyjoy_pal raises warning with large number, x > 7", {
  expect_warning(greyjoy_pal()(8))
})

test_that("scale_colour_greyjoy equals scale_color_greyjoy", {
  expect_equal(scale_color_greyjoy(), scale_colour_greyjoy())
})

test_that("scale_colour_greyjoy works", {
  expect_is(scale_color_greyjoy(), "ScaleDiscrete")
})

test_that("scale_fill_greyjoy works", {
  expect_is(scale_fill_greyjoy(), "ScaleDiscrete")
})

## House Manderly
test_that("manderly_pal raises warning with large number, x > 7", {
  expect_warning(manderly_pal()(8))
})

test_that("scale_colour_manderly equals scale_color_manderly", {
  expect_equal(scale_color_manderly(), scale_colour_manderly())
})

test_that("scale_colour_manderly works", {
  expect_is(scale_color_manderly(), "ScaleDiscrete")
})

test_that("scale_fill_manderly works", {
  expect_is(scale_fill_manderly(), "ScaleDiscrete")
})

## House Dayne
test_that("dayne_pal raises warning with large number, x > 7", {
  expect_warning(dayne_pal()(8))
})

test_that("scale_colour_dayne equals scale_color_dayne", {
  expect_equal(scale_color_dayne(), scale_colour_dayne())
})

test_that("scale_colour_dayne works", {
  expect_is(scale_color_dayne(), "ScaleDiscrete")
})

test_that("scale_fill_dayne works", {
  expect_is(scale_fill_dayne(), "ScaleDiscrete")
})

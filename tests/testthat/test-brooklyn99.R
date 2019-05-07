context("test-brooklyn99")

test_that("theme_brooklyn99 works", {
  thm <- theme_brooklyn99()
  expect_s3_class(thm, "theme")
  expect_equal(thm$text$family, "")
})

test_that("brooklyn99_pal raises warning with large number, x > 10", {
  expect_warning(brooklyn99_pal()(11))
})

test_that("scale_colour_brooklyn99/dark equals scale_color_brooklyn99/dark", {
  expect_equal(scale_color_brooklyn99(), scale_colour_brooklyn99())
  expect_equal(scale_color_brooklyn99_dark(), scale_colour_brooklyn99_dark())
})

test_that("scale_colour_brooklyn99/dark works", {
  expect_is(scale_color_brooklyn99(), "ScaleDiscrete")
  expect_is(scale_color_brooklyn99_dark(), "ScaleDiscrete")
})

test_that("scale_fill_brooklyn99/dark works", {
  expect_is(scale_fill_brooklyn99(), "ScaleDiscrete")
  expect_is(scale_fill_brooklyn99_dark(), "ScaleDiscrete")
})

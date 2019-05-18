context("test-brooklyn99")

test_that("theme_brooklyn99 works", {
  thm <- theme_brooklyn99()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 14)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## color
  expect_equal(thm$text$colour, "#F9FEFF")
  expect_equal(thm$plot.title$colour, "#F9FEFF")
  expect_equal(thm$plot.subtitle$colour, "#F9FEFF")
  expect_equal(thm$axis.text$colour, "#F9FEFF")
  expect_equal(thm$axis.title$colour, "#F9FEFF")
  expect_equal(thm$legend.text$colour, "#F9FEFF")
  expect_equal(thm$legend.title$colour, "#F9FEFF")
  expect_equal(thm$legend.position, "bottom")
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

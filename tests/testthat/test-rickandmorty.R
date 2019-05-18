context("test-rickandmorty")

test_that("theme_rickAndMorty works", {
  thm <- theme_rickAndMorty()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 12)
  expect_equal(thm$plot.title$size, 20)
  expect_equal(thm$plot.subtitle$size, 14)
  expect_equal(thm$axis.text$size, 10)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## color
  #expect_null(thm$text$colour)
  expect_null(thm$plot.title$colour)
  expect_null(thm$plot.subtitle$colour)
  expect_equal(thm$axis.text$colour, "black")
  expect_null(thm$axis.title$colour)
  expect_null(thm$legend.text$colour)
  expect_null(thm$legend.title$colour)
  expect_equal(thm$legend.position, "bottom")
})

test_that("rickAndMorty_pal raises warning with large number, x > 9", {
  expect_warning(rickAndMorty_pal()(10))
})

test_that("scale_colour_rickAndMorty equals scale_color_rickAndMorty", {
  expect_equal(scale_color_rickAndMorty(), scale_colour_rickAndMorty())
})

test_that("scale_colour_rickAndMorty works", {
  expect_is(scale_color_rickAndMorty(), "ScaleDiscrete")
})

test_that("scale_fill_rickAndMorty works", {
  expect_is(scale_fill_rickAndMorty(), "ScaleDiscrete")
})

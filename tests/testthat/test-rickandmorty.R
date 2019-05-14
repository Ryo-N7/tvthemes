context("test-rickandmorty")

test_that("theme_rickAndMorty works", {
  thm <- theme_rickAndMorty()
  expect_s3_class(thm, "theme")
  expect_equal(thm$text$family, "")
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

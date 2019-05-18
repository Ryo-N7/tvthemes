context("test-simpsons")

test_that("theme_simpsons works", {
  thm <- theme_simpsons()
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
  expect_equal(thm$axis.text$size, 10)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## color
  expect_equal(thm$text$colour, "#fee8c8")
  expect_equal(thm$plot.title$colour, "#FFD235")
  expect_equal(thm$plot.subtitle$colour, "#fee8c8")
  expect_equal(thm$axis.text$colour, "#fee8c8")
  expect_equal(thm$axis.title$colour, "#fee8c8")
  expect_equal(thm$legend.text$colour, "#ffffff")
  expect_equal(thm$legend.title$colour, "#ffffff")
  expect_equal(thm$legend.position, "bottom")
})

test_that("simpsons_pal raises warning with large number, x > 10", {
  expect_warning(simpsons_pal()(11))
})

test_that("scale_colour_simpsons equals scale_color_simpsons", {
  expect_equal(scale_color_simpsons(), scale_colour_simpsons())
})

test_that("scale_colour_simpsons works", {
  expect_is(scale_color_simpsons(), "ScaleDiscrete")
})

test_that("scale_fill_simpsons works", {
  expect_is(scale_fill_simpsons(), "ScaleDiscrete")
})

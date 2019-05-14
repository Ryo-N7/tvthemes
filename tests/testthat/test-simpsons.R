context("test-simpsons")

test_that("theme_simpsons works", {
  thm <- theme_simpsons()
  expect_s3_class(thm, "theme")
  expect_equal(thm$text$family, "")
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

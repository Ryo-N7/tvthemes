context("test-spongebob")

test_that("theme_spongeBob works", {
  thm <- theme_spongeBob()
  expect_s3_class(thm, "theme")
  expect_null(thm$text$family)
})

test_that("spongeBob_pal raises warning with large number, x > 9", {
  expect_warning(spongeBob_pal()(10))
})

test_that("scale_colour_spongeBob equals scale_color_spongeBob", {
  expect_equal(scale_color_spongeBob(), scale_colour_spongeBob())
})

test_that("scale_colour_spongeBob works", {
  expect_is(scale_color_spongeBob(), "ScaleDiscrete")
})

test_that("scale_fill_spongeBob works", {
  expect_is(scale_fill_spongeBob(), "ScaleDiscrete")
})

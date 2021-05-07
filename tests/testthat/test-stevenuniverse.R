context("test-Steven-Universe")

test_that("stark_pal raises warning with large number, x > 8", {
  expect_warning(stevenUniverse_pal(palette = "Steven")(10))
  expect_warning(stevenUniverse_pal(reverse = TRUE)(10))
  expect_error(stevenUniverse_pal(n = 10))
})

test_that("scale_colour_Steven equals scale_color_Steven", {
  expect_equal(scale_color_stevenUniverse(palette = "Steven"), scale_colour_stevenUniverse(palette = "Steven"))
})

test_that("scale_colour_Steven works", {
  expect_is(scale_color_stevenUniverse(palette = "Steven"), "ScaleDiscrete")
})

test_that("scale_fill_Steven works", {
  expect_is(scale_fill_stevenUniverse(palette = "Steven"), "ScaleDiscrete")
})

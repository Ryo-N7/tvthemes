context("test-parksandrec")

test_that("theme_parksAndRec/light works", {
  thm <- theme_parksAndRec()
  expect_s3_class(thm, "theme")
  expect_null(thm$text$family)

  thm <- theme_parksAndRec_light()
  expect_s3_class(thm, "theme")
  expect_null(thm$text$family)
})

test_that("parksAndRec_pal raises warning with large number, x > 10", {
  expect_warning(parksAndRec_pal()(11))
})

test_that("scale_colour_parksAndRec equals scale_color_parksAndRec", {
  expect_equal(scale_color_parksAndRec(), scale_colour_parksAndRec())
})

test_that("scale_colour_parksAndRec/light works", {
  expect_is(scale_color_parksAndRec(), "ScaleDiscrete")
})

test_that("scale_fill_parksAndRec/light works", {
  expect_is(scale_fill_parksAndRec(), "ScaleDiscrete")
})

context("test-parksandrec")

test_that("theme_parksAndRec works", {
  thm <- theme_parksAndRec()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 16)
  expect_equal(thm$plot.title$size, 20)
  expect_equal(thm$plot.subtitle$size, 14)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 12)
  expect_equal(thm$legend.title$size, 14)
  ## color
  #expect_null(thm$text$colour)
  expect_null(thm$plot.title$colour)
  expect_null(thm$plot.subtitle$colour)
  expect_equal(thm$axis.text$colour, "black")
  expect_equal(thm$axis.title$colour, "black")
  expect_null(thm$legend.text$colour)
  expect_null(thm$legend.title$colour)
  expect_equal(thm$legend.position, "bottom")
})

test_that("theme_parksAndRec-light works", {
  thm <- theme_parksAndRec_light()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 16)
  expect_equal(thm$plot.title$size, 20)
  expect_equal(thm$plot.subtitle$size, 14)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 12)
  expect_equal(thm$legend.title$size, 14)
  ## color
  expect_equal(thm$text$colour, "grey20")
  expect_equal(thm$plot.title$colour, "grey20")
  expect_equal(thm$plot.subtitle$colour, "grey20")
  expect_equal(thm$axis.text$colour, "grey20")
  expect_equal(thm$axis.title$colour, "grey20")
  expect_equal(thm$legend.text$colour, "grey20")
  expect_equal(thm$legend.title$colour, "grey20")
  expect_equal(thm$legend.position, "bottom")
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

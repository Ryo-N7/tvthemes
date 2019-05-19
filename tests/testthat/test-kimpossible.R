context("test-kimpossible")

## Kim Possible
test_that("kimPossible_pal raises warning with large number, x > 12", {
  expect_warning(kimPossible_pal()(13))
})

test_that("scale_colour_kimPossible equals scale_color_kimPossible", {
  expect_equal(scale_color_kimPossible(), scale_colour_kimPossible())
})

test_that("scale_color_kimPossible name is correct", {
  color_scale <- scale_color_kimPossible()
  expect_equal(color_scale$scale_name, "kimPossible")
})

test_that("scale_colour_kimPossible works", {
  expect_is(scale_color_kimPossible(), "ScaleDiscrete")
})

test_that("scale_fill_kimPossible works", {
  expect_is(scale_fill_kimPossible(), "ScaleDiscrete")
})

test_that("scale_color_kimPossible outputs correct colors", {
  expect_equal(kimPossible_pal()(5),
               c("#A75422",  ## KP orange #A75422
                 "#024663",  ## Drakken blue
                 "#70D423",  ## Shego green
                 "#891604",  ## Ron red/burgundy
                 "#02001F"   ## Ron navy
                 ))
})

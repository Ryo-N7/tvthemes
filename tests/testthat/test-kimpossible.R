context("test-kimpossible")

expect_eqNe <- function(...) expect_equal(..., check.environment = FALSE)

## Kim Possible
test_that("kimPossible_pal raises warning with large number, x > 12", {
  expect_warning(kimPossible_pal()(13))
  expect_warning(kimPossible_pal(reverse = TRUE)(13))
  expect_error(kimPossible_pal(n = 13))
})

test_that("scale_colour_kimPossible equals scale_color_kimPossible", {
  expect_eqNe(scale_color_kimPossible(), scale_colour_kimPossible())
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

## Colors are correct ----
test_that("scale_color_kimPossible outputs correct colors", {
  expect_equal(kimPossible_pal()(12),
               c("#FF8C00",  ## KP orange #A75422
                 "#024663",  ## Drakken blue
                 "#70D423",  ## Shego green
                 "#891604",  ## Ron red/burgundy
                 "#02001F",  ## Ron navy
                 "#9CF6F7",  ## KP supersuit lightblue
                 "#FFCE45",  ## Ron yellow hair
                 "#5D734D",  ## KP green eyes
                 "#FEC3BB",  ## Rufus pink
                 "#662C9C",  ## S4 KP combat purple
                 "#fff9f5",  ## white
                 "#000000"   ## black
                 ))
})

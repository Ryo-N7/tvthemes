context("test-bighero6")

expect_eqNe <- function(...) expect_equal(..., check.environment=FALSE)
expect_equal_scales <- function(x, y, ...) {
  x <- as.list(x)
  y <- as.list(y)
  x$call <- y$call <- NULL
  expect_equal(x, y, ...)
}

## Big Hero 6
test_that("bigHero6_pal raises warning with large number, x > 8", {
  expect_warning(bigHero6_pal()(9))
  expect_warning(bigHero6_pal(reverse = TRUE)(9))
  expect_error(bigHero6_pal(n = 9))
})

# test_that("scale_colour_bigHero6 equals scale_color_bigHero6", {
#   expect_equal_scales(scale_color_bigHero6(), scale_colour_bigHero6())
# })

# test_that("scale_colour_bigHero6 works", {
#   expect_is(scale_color_bigHero6(), "ScaleDiscrete")
# })

# test_that("scale_fill_bigHero6 works", {
#   expect_is(scale_fill_bigHero6(), "ScaleDiscrete")
# })

test_that("scale_color_bigHero6 outputs correct colors", {
  expect_equal(bigHero6_pal()(8),
               c(  "#ffff33",  ## gogo yellow #ffff1a #ffff19
                   "#ffa500",  ## honeylemon/fredzilla orange
                   "#4F366F",  ## baymax/hiro darkpurple
                   "#ff0000",  ## baymax red
                   "#00fa9a",  ## wasabi green
                   "#3177D5",  ## fredzilla blue  #50F2F7
                   "#c71585",  ## honey lemon violet #9400d3 #ff00ff #C70039  #c71585
                   "#000000"   ## black
               ))
})

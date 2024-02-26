context("test-rickandmorty")

expect_eqNe <- function(...) expect_equal(..., check.environment = FALSE)
expect_equal_scales <- function(x, y, ...) {
  x <- as.list(x)
  y <- as.list(y)
  x$call <- y$call <- NULL
  expect_equal(x, y, ...)
}

test_that("theme_rickAndMorty works", {
  thm <- theme_rickAndMorty()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 12)
  expect_equal(thm$plot.title$size, 20)
  expect_equal(thm$plot.subtitle$size, 14)
  expect_equal(thm$axis.text$size, 10)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## color
  #expect_null(thm$text$colour)
  expect_null(thm$plot.title$colour)
  expect_null(thm$plot.subtitle$colour)
  expect_equal(thm$axis.text$colour, "black")
  expect_null(thm$axis.title$colour)
  expect_null(thm$legend.text$colour)
  expect_null(thm$legend.title$colour)
  expect_equal(thm$legend.position, "bottom")

  ## ticks == TRUE
  thm <- theme_rickAndMorty(ticks = TRUE)
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 12)
  expect_equal(thm$plot.title$size, 20)
  expect_equal(thm$plot.subtitle$size, 14)
  expect_equal(thm$axis.text$size, 10)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## ticks
  expect_equal(thm$axis.ticks$linewidth, 0.15)
  ## color
  #expect_null(thm$text$colour)
  expect_null(thm$plot.title$colour)
  expect_null(thm$plot.subtitle$colour)
  expect_equal(thm$axis.text$colour, "black")
  expect_null(thm$axis.title$colour)
  expect_null(thm$legend.text$colour)
  expect_null(thm$legend.title$colour)
  expect_equal(thm$legend.position, "bottom")
})

test_that("rickAndMorty_pal raises warning with large number, x > 9", {
  expect_warning(rickAndMorty_pal()(10))
  expect_warning(rickAndMorty_pal(reverse = TRUE)(10))
  expect_error(rickAndMorty_pal(n = 10))
})

# test_that("scale_colour_rickAndMorty equals scale_color_rickAndMorty", {
#   expect_equal_scales(scale_color_rickAndMorty(), scale_colour_rickAndMorty())
# })
#
# test_that("scale_colour_rickAndMorty works", {
#   expect_is(scale_color_rickAndMorty(), "ScaleDiscrete")
# })
#
# test_that("scale_fill_rickAndMorty works", {
#   expect_is(scale_fill_rickAndMorty(), "ScaleDiscrete")
# })

## Colors are correct ----
test_that("R&M palette outputs correct colors", {
  expect_equal(rickAndMorty_pal()(9),
               c(  "#01B4C6", ## #01B4C6 R&M turqoise
                   "#97ce4c",  ## #97ce4c R&M green
                   "#FFF874",  ## #FFF874 Morty yellow
                   "#BEE5FD",  ## #BEE5FD Rick blue
                   "#F675DA", ## #F675DA summer pink
                   "#44281d",  ## regular brown
                   "#3a4767", ## #3a4767 morty pants navy
                   "#F8D3AC", ## #7FD112 portal green   #F8D3AC skin beige
                   "#E64358"#,  ## #2D8844 portal darker green   #E64358 beth red
               ))
})

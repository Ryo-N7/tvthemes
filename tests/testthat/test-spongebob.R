context("test-spongebob")

expect_eqNe <- function(...) expect_equal(..., check.environment = FALSE)

test_that("theme_spongeBob works", {
  thm <- theme_spongeBob()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 12)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## color
  expect_equal(thm$text$colour, "#F9FEFF")
  expect_equal(thm$plot.title$colour, "#F9FEFF")
  expect_equal(thm$plot.subtitle$colour, "#F9FEFF")
  expect_equal(thm$axis.text$colour, "#F9FEFF")
  expect_equal(thm$axis.title$colour, "#F9FEFF")
  expect_equal(thm$legend.text$colour, "#F9FEFF")
  expect_equal(thm$legend.title$colour, "#F9FEFF")
  expect_equal(thm$legend.position, "bottom")

  ## ticks == TRUE
  thm <- theme_spongeBob(ticks = TRUE)
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 12)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## ticks
  expect_equal(thm$axis.ticks$linewidth, 0.15)
  ## color
  expect_equal(thm$text$colour, "#F9FEFF")
  expect_equal(thm$plot.title$colour, "#F9FEFF")
  expect_equal(thm$plot.subtitle$colour, "#F9FEFF")
  expect_equal(thm$axis.text$colour, "#F9FEFF")
  expect_equal(thm$axis.title$colour, "#F9FEFF")
  expect_equal(thm$legend.text$colour, "#F9FEFF")
  expect_equal(thm$legend.title$colour, "#F9FEFF")
  expect_equal(thm$legend.position, "bottom")
})

test_that("spongeBob_pal raises warning with large number, x > 9", {
  expect_warning(spongeBob_pal()(10))
  expect_warning(spongeBob_pal(reverse = TRUE)(10))
  expect_error(spongeBob_pal(n = 10))
})

test_that("scale_colour_spongeBob equals scale_color_spongeBob", {
  expect_eqNe(scale_color_spongeBob(), scale_colour_spongeBob())
})

test_that("scale_colour_spongeBob works", {
  expect_is(scale_color_spongeBob(), "ScaleDiscrete")
})

test_that("scale_fill_spongeBob works", {
  expect_is(scale_fill_spongeBob(), "ScaleDiscrete")
})

## Colors are correct ----
test_that("spongebob palette outputs correct colors", {
  expect_equal(spongeBob_pal()(9),
               c(  "#C86925",  ## brownpants
                   "#FDF56C",  ## sponge yellow
                   "#FC9576",  ## patrick pink
                   "#5D57AF",  ## patrick purple
                   "#B2CE31",  ## patrick green
                   "#FF2027",  ## mr.krabs red
                   "#B1D6C5",  ## squidward blue
                   "#AB8323",  ## squidward shirt brown
                   "#000000"   ## black
               ))
})

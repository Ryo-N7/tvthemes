context("test-attackontitan")

expect_eqNe <- function(...) expect_equal(..., check.environment = FALSE)

## Attack on Titan
test_that("attackOnTitan_pal raises warning with large number, x > 8", {
  expect_warning(attackOnTitan_pal()(9))
  expect_warning(attackOnTitan_pal(reverse = TRUE)(9))
  expect_error(attackOnTitan_pal(n = 9))
})

test_that("scale_colour_attackOnTitan equals scale_color_attackOnTitan", {
  expect_eqNe(scale_color_attackOnTitan(), scale_colour_attackOnTitan())
})

test_that("scale_colour_attackOnTitan works", {
  expect_is(scale_color_attackOnTitan(), "ScaleDiscrete")
})

test_that("scale_fill_attackOnTitan works", {
  expect_is(scale_fill_attackOnTitan(), "ScaleDiscrete")
})

test_that("attackOnTitan outputs correct colors", {
  expect_equal(attackOnTitan_pal()(8),
               c(  "#004c00",  ## cape green  #42694a #004c00 #004000  	#3C4D3D
                   "#173357",  ## survey corp blue
                   "#3E1E13",  ## jacket brown   lightbrown #6f553f
                   "#e50000",  ## titan red   #BF2F1F
                   "#999BA0",  ## blade steel
                   "#c8a780",  ## jacket lighttan
                   "#EB6154",  ## titan skin pink
                   "#000000"   ## black
               ))
})

context("test-gravityFalls")

expect_eqNe <- function(...) expect_equal(..., check.environment = FALSE)

## Big Hero 6
test_that("gravityFalls_pal raises warning with large number, x > 15", {
  expect_warning(gravityFalls_pal()(15))
  expect_warning(gravityFalls_pal(reverse = TRUE)(15))
  expect_error(gravityFalls_pal(n = 15))
})

test_that("scale_colour_gravityFalls equals scale_color_gravityFalls", {
  expect_eqNe(scale_color_gravityFalls(), scale_colour_gravityFalls())
})

test_that("scale_color_gravityFalls name is correct", {
  color_scale <- scale_color_gravityFalls()
  expect_equal(color_scale$scale_name, "gravityFalls")
})

test_that("scale_colour_gravityFalls works", {
  expect_is(scale_color_gravityFalls(), "ScaleDiscrete")
})

test_that("scale_fill_gravityFalls works", {
  expect_is(scale_fill_gravityFalls(), "ScaleDiscrete")
})

test_that("scale_color_gravityFalls outputs correct colors", {
  expect_equal(gravityFalls_pal()(14),
               c(    "#417BA1",  ## dipper light blue
                     "#ff1493",  ## mabel pink  #DF504C
                     "#ffff2e",  ## bill cipher yellow #ffff2e #fff400
                     "#345634",  ## soos green
                     "#8b0000",  ## fez burgundy #8b0000  #732335
                     "#ff6700",  ## wendy orange
                     "#93C0D5",  ## lil gideon skyblue
                     "#8b4513",  ## mcgucket brown #8b4513  #8E6537
                     "#9248A7",  ## pacifica purple
                     "#1c8859",  ## wendy green
                     "#474747",  ## grunkle grey
                     "#8fbc8f",  ## sheriff blubs green
                     "#d2b48c",  ## stanford coat beige #d2b48c #dfbe58
                     "#000000"   ## robbie black
               ))
})

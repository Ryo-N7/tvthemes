context("test-attackontitan")

## Attack on Titan
test_that("attackOnTitan_pal raises warning with large number, x > 9", {
  expect_warning(attackOnTitan_pal()(10))
})

test_that("scale_colour_attackOnTitan equals scale_color_attackOnTitan", {
  expect_equal(scale_color_attackOnTitan(), scale_colour_attackOnTitan())
})

test_that("scale_colour_attackOnTitan works", {
  expect_is(scale_color_attackOnTitan(), "ScaleDiscrete")
})

test_that("scale_fill_attackOnTitan works", {
  expect_is(scale_fill_attackOnTitan(), "ScaleDiscrete")
})

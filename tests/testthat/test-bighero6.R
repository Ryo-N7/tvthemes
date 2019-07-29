context("test-bighero6")

## Big Hero 6
test_that("bigHero6_pal raises warning with large number, x > 12", {
  expect_warning(bigHero6_pal()(9))
})

test_that("scale_colour_bigHero6 equals scale_color_bigHero6", {
  expect_equal(scale_color_bigHero6(), scale_colour_bigHero6())
})

test_that("scale_color_bigHero6 name is correct", {
  color_scale <- scale_color_bigHero6()
  expect_equal(color_scale$scale_name, "bigHero6")
})

test_that("scale_colour_bigHero6 works", {
  expect_is(scale_color_bigHero6(), "ScaleDiscrete")
})

test_that("scale_fill_bigHero6 works", {
  expect_is(scale_fill_bigHero6(), "ScaleDiscrete")
})

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

context("test-gameofthrones")

expect_eqNe <- function(...) expect_equal(..., check.environment = FALSE)

## House Stark ----
test_that("stark_pal raises warning with large number, x > 9", {
  expect_warning(westeros_pal(palette = "Stark")(10))
  expect_warning(westeros_pal(reverse = TRUE)(10))
  expect_error(westeros_pal(n = 10))
})

test_that("scale_colour_stark equals scale_color_stark", {
  expect_eqNe(scale_color_westeros(palette = "Stark"), scale_colour_westeros(palette = "Stark"))
})

test_that("scale_colour_stark works", {
  expect_is(scale_color_westeros(palette = "Stark"), "ScaleDiscrete")
})

test_that("scale_fill_stark works", {
  expect_is(scale_fill_westeros(palette = "Stark"), "ScaleDiscrete")
})

## House Lannister ----
test_that("Lannister_pal raises warning with large number, x > 9", {
  expect_warning(westeros_pal(palette = "Lannister")(10))
})

test_that("scale_colour_Lannister equals scale_color_Lannister", {
  expect_eqNe(scale_color_westeros(palette = "Lannister"), scale_colour_westeros(palette = "Lannister"))
})

test_that("scale_colour_Lannister works", {
  expect_is(scale_color_westeros(palette = "Lannister"), "ScaleDiscrete")
})

test_that("scale_fill_Lannister works", {
  expect_is(scale_fill_westeros(palette = "Lannister"), "ScaleDiscrete")
})

## House Tyrell ----
test_that("Tyrell_pal raises warning with large number, x > 9", {
  expect_warning(westeros_pal(palette = "Tyrell")(10))
})

test_that("scale_colour_Tyrell equals scale_color_Tyrell", {
  expect_eqNe(scale_color_westeros(palette = "Tyrell"), scale_colour_westeros(palette = "Tyrell"))
})

test_that("scale_colour_Tyrell works", {
  expect_is(scale_color_westeros(palette = "Tyrell"), "ScaleDiscrete")
})

test_that("scale_fill_Tyrell works", {
  expect_is(scale_fill_westeros(palette = "Tyrell"), "ScaleDiscrete")
})

## House Targaryen ----
test_that("Targaryen_pal raises warning with large number, x > 9", {
  expect_warning(westeros_pal(palette = "Targaryen")(10))
})

test_that("scale_colour_Targaryen equals scale_color_Targaryen", {
  expect_eqNe(scale_color_westeros(palette = "Targaryen"), scale_colour_westeros(palette = "Targaryen"))
})

test_that("scale_colour_Targaryen works", {
  expect_is(scale_color_westeros(palette = "Targaryen"), "ScaleDiscrete")
})

test_that("scale_fill_Targaryen works", {
  expect_is(scale_fill_westeros(palette = "Targaryen"), "ScaleDiscrete")
})

## House Tully ----
test_that("Tully_pal raises warning with large number, x > 9", {
  expect_warning(westeros_pal(palette = "Tully")(10))
})

test_that("scale_colour_Tully equals scale_color_Tully", {
  expect_eqNe(scale_color_westeros(palette = "Tully"), scale_colour_westeros(palette = "Tully"))
})

test_that("scale_colour_Tully works", {
  expect_is(scale_color_westeros(palette = "Tully"), "ScaleDiscrete")
})

test_that("scale_fill_Tully works", {
  expect_is(scale_fill_westeros(palette = "Tully"), "ScaleDiscrete")
})

## House Greyjoy ----
test_that("Greyjoy_pal raises warning with large number, x > 9", {
  expect_warning(westeros_pal(palette = "Greyjoy")(10))
})

test_that("scale_colour_Greyjoy equals scale_color_Greyjoy", {
  expect_eqNe(scale_color_westeros(palette = "Greyjoy"), scale_colour_westeros(palette = "Greyjoy"))
})

test_that("scale_colour_Greyjoy works", {
  expect_is(scale_color_westeros(palette = "Greyjoy"), "ScaleDiscrete")
})

test_that("scale_fill_Greyjoy works", {
  expect_is(scale_fill_westeros(palette = "Greyjoy"), "ScaleDiscrete")
})

## House Manderly ----
test_that("Manderly_pal raises warning with large number, x > 9", {
  expect_warning(westeros_pal(palette = "Manderly")(10))
})

test_that("scale_colour_Manderly equals scale_color_Manderly", {
  expect_eqNe(scale_color_westeros(palette = "Manderly"), scale_colour_westeros(palette = "Manderly"))
})

test_that("scale_colour_Manderly works", {
  expect_is(scale_color_westeros(palette = "Manderly"), "ScaleDiscrete")
})

test_that("scale_fill_Manderly works", {
  expect_is(scale_fill_westeros(palette = "Manderly"), "ScaleDiscrete")
})

## House Baratheon of Dragonstone (Stannis) ----
test_that("Stannis_pal raises warning with large number, x > 9", {
  expect_warning(westeros_pal(palette = "Stannis")(10))
})

test_that("scale_colour_Stannis equals scale_color_Stannis", {
  expect_eqNe(scale_color_westeros(palette = "Stannis"), scale_colour_westeros(palette = "Stannis"))
})

test_that("scale_colour_Stannis works", {
  expect_is(scale_color_westeros(palette = "Stannis"), "ScaleDiscrete")
})

test_that("scale_fill_Stannis works", {
  expect_is(scale_fill_westeros(palette = "Stannis"), "ScaleDiscrete")
})

## House Martell ----
test_that("Martell_pal raises warning with large number, x > 9", {
  expect_warning(westeros_pal(palette = "Martell")(10))
})

test_that("scale_colour_Martell equals scale_color_Martell", {
  expect_eqNe(scale_color_westeros(palette = "Martell"), scale_colour_westeros(palette = "Martell"))
})

test_that("scale_colour_Martell works", {
  expect_is(scale_color_westeros(palette = "Martell"), "ScaleDiscrete")
})

test_that("scale_fill_Martell works", {
  expect_is(scale_fill_westeros(palette = "Martell"), "ScaleDiscrete")
})

## House Arryn ----
test_that("Arryn_pal raises warning with large number, x > 9", {
  expect_warning(westeros_pal(palette = "Arryn")(10))
})

test_that("scale_colour_Arryn equals scale_color_Arryn", {
  expect_eqNe(scale_color_westeros(palette = "Arryn"), scale_colour_westeros(palette = "Arryn"))
})

test_that("scale_colour_Arryn works", {
  expect_is(scale_color_westeros(palette = "Arryn"), "ScaleDiscrete")
})

test_that("scale_fill_Arryn works", {
  expect_is(scale_fill_westeros(palette = "Arryn"), "ScaleDiscrete")
})

## Colors check ----
test_that("westeros_pal outputs correct colors", {
  expect_equal(westeros_pal(palette = "Stark")(9),
               c(    "#cadde1", ## light-skyblue
                     "#7B906F", ## grey-green
                     "#174D79", ## light teal blue
                     "#fffafa", ## snow white
                     "#898989", ## dark-grey
                     "#D4CDB1", ## light-grey-tan
                     "#708090", ## slate grey
                     "#120976", ## purple blue
                     "#000000"  ## black
               ))
  expect_equal(westeros_pal(palette = "Stannis")(7),
               c(        "#FF0000", ## rhllor red
                         "#ff8d1a", ## rhllor orange
                         "#FFD700", ## baratheon gold
                         "#b20000", ## fire red
                         "#cc6600", ## baratheon orange
                         "#FFFF66", ## rhllor light yellow
                         "#000000"  ## black
               ))
  expect_equal(westeros_pal(palette = "Lannister")(6),
               c(            "#89080A", ## maroon
                             "#C5AA73", ## grey
                             "#FEDF25", ## gold
                             "#C24841", ## orange
                             "#8B5B45", ## brown
                             "#000000"  ## black
               ))
  expect_equal(westeros_pal(palette = "Tyrell")(9),
               c(    "#068105", ## darkgreen
                     "#F7DC27", ## yellow
                     "#808000", ## olive
                     "#AB681B", ## brown
                     "#F9FE76", ## lightgrass-green
                     "#8DA080", ## grey-green
                     "#717497", ## blue-grey
                     "#98FB98", ## pale green
                     "#3CB371"  ## medium sea green
               ))
  expect_equal(westeros_pal(palette = "Targaryen")(5),
               c(    "#AC1F25", ## blood-red
                     "#272727", ## lightblack
                     "#ff9933", ## saffron
                     "#828788", ## metallic grey
                     "#96804b"  ## light-brown
               ))
  expect_equal(westeros_pal(palette = "Martell")(8),
               c(    "#ff8000", ## martell orange
                     "#cc6600", ## martell darkorange
                     "#b81b18", ## martell red
                     "#73110f", ## martell wine red
                     "#f8fc23", ## martell brightyellow
                     "#fafd7b", ## martell lightyellow
                     "#4c2600", ## martell brown
                     "#a57642"  ## martell lightbrown
               ))
  expect_equal(westeros_pal(palette = "Tully")(6),
               c(    "#212250", ## darkblue
                     "#AE432F", ## darkorange
                     "#E4EDCA", ## green-white
                     "#8B5B45", ## brown
                     "#4682B4", ## steelblue
                     "#000000"  ## black
               ))
  expect_equal(westeros_pal(palette = "Greyjoy")(6),
               c(    "#000000", ## black
                     "#708090", ## slate gray
                     "#D4CDB1", ## light-grey-tan
                     "#DCDCDC", ## gainsborough
                     "#F7DC27", ## yellow
                     "#808080"  ## gray
               ))
  expect_equal(westeros_pal(palette = "Manderly")(7),
               c(    "#40e0d0", ## manderly turqouise     #32BB9D
                     "#808080", ## gray
                     "#00ff00", ## light-sea green        #0FBB11
                     "#282828", ## metallic black
                     "#015202", ## dark seaweed green
                     "#195953", ## dark turqoise
                     "#FFFFFF"  ## white
               ))
  expect_equal(westeros_pal(palette = "Arryn")(7),
               c(    "#007fff", ## arryn blue
                     "#7fbfff", ## arryn light blue
                     "#001933", ## arryn dark navy
                     "#4c4cff", ## arryn purple
                     "#ffefb2", ## arryn beige
                     "#a89797", ## arryn lightbrown
                     "#FFFFFF"  ## white
               ))
})

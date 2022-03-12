


## DATA ----

pal_names <- stevenUniverse_palette %>% names()
pal_num <- map(stevenUniverse_palette, ~ length(.x)) %>% unlist() %>% unname()

names_df <- data.frame(
  "names" = pal_names,
  "num" = pal_num,
  "numplustwo" = pal_num + 2
)

## START ----

fileName <- here::here("tests/testthat/test-SU.R")

message(sprintf("Writing %s...", fileName))
r <- file(fileName, open = "w")



for (i in 1:nrow(names_df)) {
  cat(file = r, sprintf("### %s ----\n\n",
                        names_df$names[[i]]))

  cat(file = r,
      sprintf(
        "test_that('%s_pal raises warning with large number, x > %s', {
  expect_warning(stevenUniverse_pal(palette = '%s')(%s))
  expect_warning(stevenUniverse_pal(palette = '%s', reverse = TRUE)(%s))
  expect_error(stevenUniverse_pal(palette = '%s', n = %s))
})\n\n",
names_df$names[[i]],
names_df$num[[i]],
names_df$names[[i]],
names_df$numplustwo[[i]],
names_df$names[[i]],
names_df$numplustwo[[i]],
names_df$names[[i]],
names_df$numplustwo[[i]]))

  cat(file = r,
      sprintf("test_that('scale_colour_Steven equals scale_color_%s', {
  expect_equal(scale_color_stevenUniverse(palette = '%s'), scale_colour_stevenUniverse(palette = '%s'))
})\n\n",
names_df$names[[i]],
names_df$names[[i]],
names_df$names[[i]]))

  cat(file = r, sprintf("test_that('scale_colour_%s works', {
  expect_is(scale_color_stevenUniverse(palette = '%s'), 'ScaleDiscrete')
})\n\n",
names_df$names[[i]],
names_df$names[[i]]))

  cat(file = r, sprintf("test_that('scale_fill_%s works', {
  expect_is(scale_fill_stevenUniverse(palette = '%s'), 'ScaleDiscrete')
})\n\n",
names_df$names[[i]],
names_df$names[[i]]))
}

close(r)

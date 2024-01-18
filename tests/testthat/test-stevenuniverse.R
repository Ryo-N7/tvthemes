expect_equal_scales <- function(x, y, ...) {
  x <- as.list(x)
  y <- as.list(y)
  x$call <- y$call <- NULL
  expect_equal(x, y, ...)
}

### Steven ----

test_that('Steven_pal raises warning with large number, x > 8', {
  expect_warning(stevenUniverse_pal(palette = 'Steven')(10))
  expect_warning(stevenUniverse_pal(palette = 'Steven', reverse = TRUE)(10))
  expect_error(stevenUniverse_pal(palette = 'Steven', n = 10))
})

test_that('scale_colour_Steven equals scale_color_Steven', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Steven'), scale_colour_stevenUniverse(palette = 'Steven'))
})

test_that('scale_colour_Steven works', {
  expect_is(scale_color_stevenUniverse(palette = 'Steven'), 'ScaleDiscrete')
})

test_that('scale_fill_Steven works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Steven'), 'ScaleDiscrete')
})

### Garnet ----

test_that('Garnet_pal raises warning with large number, x > 9', {
  expect_warning(stevenUniverse_pal(palette = 'Garnet')(11))
  expect_warning(stevenUniverse_pal(palette = 'Garnet', reverse = TRUE)(11))
  expect_error(stevenUniverse_pal(palette = 'Garnet', n = 11))
})

test_that('scale_colour_Steven equals scale_color_Garnet', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Garnet'), scale_colour_stevenUniverse(palette = 'Garnet'))
})

test_that('scale_colour_Garnet works', {
  expect_is(scale_color_stevenUniverse(palette = 'Garnet'), 'ScaleDiscrete')
})

test_that('scale_fill_Garnet works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Garnet'), 'ScaleDiscrete')
})

### Amethyst ----

test_that('Amethyst_pal raises warning with large number, x > 6', {
  expect_warning(stevenUniverse_pal(palette = 'Amethyst')(8))
  expect_warning(stevenUniverse_pal(palette = 'Amethyst', reverse = TRUE)(8))
  expect_error(stevenUniverse_pal(palette = 'Amethyst', n = 8))
})

test_that('scale_colour_Steven equals scale_color_Amethyst', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Amethyst'), scale_colour_stevenUniverse(palette = 'Amethyst'))
})

test_that('scale_colour_Amethyst works', {
  expect_is(scale_color_stevenUniverse(palette = 'Amethyst'), 'ScaleDiscrete')
})

test_that('scale_fill_Amethyst works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Amethyst'), 'ScaleDiscrete')
})

### Pearl ----

test_that('Pearl_pal raises warning with large number, x > 6', {
  expect_warning(stevenUniverse_pal(palette = 'Pearl')(8))
  expect_warning(stevenUniverse_pal(palette = 'Pearl', reverse = TRUE)(8))
  expect_error(stevenUniverse_pal(palette = 'Pearl', n = 8))
})

test_that('scale_colour_Steven equals scale_color_Pearl', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Pearl'), scale_colour_stevenUniverse(palette = 'Pearl'))
})

test_that('scale_colour_Pearl works', {
  expect_is(scale_color_stevenUniverse(palette = 'Pearl'), 'ScaleDiscrete')
})

test_that('scale_fill_Pearl works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Pearl'), 'ScaleDiscrete')
})

### RoseQuartz ----

test_that('RoseQuartz_pal raises warning with large number, x > 7', {
  expect_warning(stevenUniverse_pal(palette = 'RoseQuartz')(9))
  expect_warning(stevenUniverse_pal(palette = 'RoseQuartz', reverse = TRUE)(9))
  expect_error(stevenUniverse_pal(palette = 'RoseQuartz', n = 9))
})

test_that('scale_colour_Steven equals scale_color_RoseQuartz', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'RoseQuartz'), scale_colour_stevenUniverse(palette = 'RoseQuartz'))
})

test_that('scale_colour_RoseQuartz works', {
  expect_is(scale_color_stevenUniverse(palette = 'RoseQuartz'), 'ScaleDiscrete')
})

test_that('scale_fill_RoseQuartz works', {
  expect_is(scale_fill_stevenUniverse(palette = 'RoseQuartz'), 'ScaleDiscrete')
})

### Peridot ----

test_that('Peridot_pal raises warning with large number, x > 7', {
  expect_warning(stevenUniverse_pal(palette = 'Peridot')(9))
  expect_warning(stevenUniverse_pal(palette = 'Peridot', reverse = TRUE)(9))
  expect_error(stevenUniverse_pal(palette = 'Peridot', n = 9))
})

test_that('scale_colour_Steven equals scale_color_Peridot', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Peridot'), scale_colour_stevenUniverse(palette = 'Peridot'))
})

test_that('scale_colour_Peridot works', {
  expect_is(scale_color_stevenUniverse(palette = 'Peridot'), 'ScaleDiscrete')
})

test_that('scale_fill_Peridot works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Peridot'), 'ScaleDiscrete')
})

### LapisLazuli ----

test_that('LapisLazuli_pal raises warning with large number, x > 7', {
  expect_warning(stevenUniverse_pal(palette = 'LapisLazuli')(9))
  expect_warning(stevenUniverse_pal(palette = 'LapisLazuli', reverse = TRUE)(9))
  expect_error(stevenUniverse_pal(palette = 'LapisLazuli', n = 9))
})

test_that('scale_colour_Steven equals scale_color_LapisLazuli', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'LapisLazuli'), scale_colour_stevenUniverse(palette = 'LapisLazuli'))
})

test_that('scale_colour_LapisLazuli works', {
  expect_is(scale_color_stevenUniverse(palette = 'LapisLazuli'), 'ScaleDiscrete')
})

test_that('scale_fill_LapisLazuli works', {
  expect_is(scale_fill_stevenUniverse(palette = 'LapisLazuli'), 'ScaleDiscrete')
})

### Diamonds ----

test_that('Diamonds_pal raises warning with large number, x > 9', {
  expect_warning(stevenUniverse_pal(palette = 'Diamonds')(11))
  expect_warning(stevenUniverse_pal(palette = 'Diamonds', reverse = TRUE)(11))
  expect_error(stevenUniverse_pal(palette = 'Diamonds', n = 11))
})

test_that('scale_colour_Steven equals scale_color_Diamonds', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Diamonds'), scale_colour_stevenUniverse(palette = 'Diamonds'))
})

test_that('scale_colour_Diamonds works', {
  expect_is(scale_color_stevenUniverse(palette = 'Diamonds'), 'ScaleDiscrete')
})

test_that('scale_fill_Diamonds works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Diamonds'), 'ScaleDiscrete')
})

### Jasper ----

test_that('Jasper_pal raises warning with large number, x > 6', {
  expect_warning(stevenUniverse_pal(palette = 'Jasper')(8))
  expect_warning(stevenUniverse_pal(palette = 'Jasper', reverse = TRUE)(8))
  expect_error(stevenUniverse_pal(palette = 'Jasper', n = 8))
})

test_that('scale_colour_Steven equals scale_color_Jasper', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Jasper'), scale_colour_stevenUniverse(palette = 'Jasper'))
})

test_that('scale_colour_Jasper works', {
  expect_is(scale_color_stevenUniverse(palette = 'Jasper'), 'ScaleDiscrete')
})

test_that('scale_fill_Jasper works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Jasper'), 'ScaleDiscrete')
})

### Topaz ----

test_that('Topaz_pal raises warning with large number, x > 6', {
  expect_warning(stevenUniverse_pal(palette = 'Topaz')(8))
  expect_warning(stevenUniverse_pal(palette = 'Topaz', reverse = TRUE)(8))
  expect_error(stevenUniverse_pal(palette = 'Topaz', n = 8))
})

test_that('scale_colour_Steven equals scale_color_Topaz', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Topaz'), scale_colour_stevenUniverse(palette = 'Topaz'))
})

test_that('scale_colour_Topaz works', {
  expect_is(scale_color_stevenUniverse(palette = 'Topaz'), 'ScaleDiscrete')
})

test_that('scale_fill_Topaz works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Topaz'), 'ScaleDiscrete')
})

### Spinel ----

test_that('Spinel_pal raises warning with large number, x > 6', {
  expect_warning(stevenUniverse_pal(palette = 'Spinel')(8))
  expect_warning(stevenUniverse_pal(palette = 'Spinel', reverse = TRUE)(8))
  expect_error(stevenUniverse_pal(palette = 'Spinel', n = 8))
})

test_that('scale_colour_Steven equals scale_color_Spinel', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Spinel'), scale_colour_stevenUniverse(palette = 'Spinel'))
})

test_that('scale_colour_Spinel works', {
  expect_is(scale_color_stevenUniverse(palette = 'Spinel'), 'ScaleDiscrete')
})

test_that('scale_fill_Spinel works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Spinel'), 'ScaleDiscrete')
})

### Bismuth ----

test_that('Bismuth_pal raises warning with large number, x > 8', {
  expect_warning(stevenUniverse_pal(palette = 'Bismuth')(10))
  expect_warning(stevenUniverse_pal(palette = 'Bismuth', reverse = TRUE)(10))
  expect_error(stevenUniverse_pal(palette = 'Bismuth', n = 10))
})

test_that('scale_colour_Steven equals scale_color_Bismuth', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Bismuth'), scale_colour_stevenUniverse(palette = 'Bismuth'))
})

test_that('scale_colour_Bismuth works', {
  expect_is(scale_color_stevenUniverse(palette = 'Bismuth'), 'ScaleDiscrete')
})

test_that('scale_fill_Bismuth works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Bismuth'), 'ScaleDiscrete')
})

### Ruby ----

test_that('Ruby_pal raises warning with large number, x > 7', {
  expect_warning(stevenUniverse_pal(palette = 'Ruby')(9))
  expect_warning(stevenUniverse_pal(palette = 'Ruby', reverse = TRUE)(9))
  expect_error(stevenUniverse_pal(palette = 'Ruby', n = 9))
})

test_that('scale_colour_Steven equals scale_color_Ruby', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Ruby'), scale_colour_stevenUniverse(palette = 'Ruby'))
})

test_that('scale_colour_Ruby works', {
  expect_is(scale_color_stevenUniverse(palette = 'Ruby'), 'ScaleDiscrete')
})

test_that('scale_fill_Ruby works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Ruby'), 'ScaleDiscrete')
})

### Sapphire ----

test_that('Sapphire_pal raises warning with large number, x > 7', {
  expect_warning(stevenUniverse_pal(palette = 'Sapphire')(9))
  expect_warning(stevenUniverse_pal(palette = 'Sapphire', reverse = TRUE)(9))
  expect_error(stevenUniverse_pal(palette = 'Sapphire', n = 9))
})

test_that('scale_colour_Steven equals scale_color_Sapphire', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Sapphire'), scale_colour_stevenUniverse(palette = 'Sapphire'))
})

test_that('scale_colour_Sapphire works', {
  expect_is(scale_color_stevenUniverse(palette = 'Sapphire'), 'ScaleDiscrete')
})

test_that('scale_fill_Sapphire works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Sapphire'), 'ScaleDiscrete')
})

### Emerald ----

test_that('Emerald_pal raises warning with large number, x > 7', {
  expect_warning(stevenUniverse_pal(palette = 'Emerald')(9))
  expect_warning(stevenUniverse_pal(palette = 'Emerald', reverse = TRUE)(9))
  expect_error(stevenUniverse_pal(palette = 'Emerald', n = 9))
})

test_that('scale_colour_Steven equals scale_color_Emerald', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Emerald'), scale_colour_stevenUniverse(palette = 'Emerald'))
})

test_that('scale_colour_Emerald works', {
  expect_is(scale_color_stevenUniverse(palette = 'Emerald'), 'ScaleDiscrete')
})

test_that('scale_fill_Emerald works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Emerald'), 'ScaleDiscrete')
})

### Nephrite ----

test_that('Nephrite_pal raises warning with large number, x > 7', {
  expect_warning(stevenUniverse_pal(palette = 'Nephrite')(9))
  expect_warning(stevenUniverse_pal(palette = 'Nephrite', reverse = TRUE)(9))
  expect_error(stevenUniverse_pal(palette = 'Nephrite', n = 9))
})

test_that('scale_colour_Steven equals scale_color_Nephrite', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Nephrite'), scale_colour_stevenUniverse(palette = 'Nephrite'))
})

test_that('scale_colour_Nephrite works', {
  expect_is(scale_color_stevenUniverse(palette = 'Nephrite'), 'ScaleDiscrete')
})

test_that('scale_fill_Nephrite works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Nephrite'), 'ScaleDiscrete')
})

### Aquamarine ----

test_that('Aquamarine_pal raises warning with large number, x > 7', {
  expect_warning(stevenUniverse_pal(palette = 'Aquamarine')(9))
  expect_warning(stevenUniverse_pal(palette = 'Aquamarine', reverse = TRUE)(9))
  expect_error(stevenUniverse_pal(palette = 'Aquamarine', n = 9))
})

test_that('scale_colour_Steven equals scale_color_Aquamarine', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Aquamarine'), scale_colour_stevenUniverse(palette = 'Aquamarine'))
})

test_that('scale_colour_Aquamarine works', {
  expect_is(scale_color_stevenUniverse(palette = 'Aquamarine'), 'ScaleDiscrete')
})

test_that('scale_fill_Aquamarine works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Aquamarine'), 'ScaleDiscrete')
})

### Padparadscha ----

test_that('Padparadscha_pal raises warning with large number, x > 6', {
  expect_warning(stevenUniverse_pal(palette = 'Padparadscha')(8))
  expect_warning(stevenUniverse_pal(palette = 'Padparadscha', reverse = TRUE)(8))
  expect_error(stevenUniverse_pal(palette = 'Padparadscha', n = 8))
})

test_that('scale_colour_Steven equals scale_color_Padparadscha', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Padparadscha'), scale_colour_stevenUniverse(palette = 'Padparadscha'))
})

test_that('scale_colour_Padparadscha works', {
  expect_is(scale_color_stevenUniverse(palette = 'Padparadscha'), 'ScaleDiscrete')
})

test_that('scale_fill_Padparadscha works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Padparadscha'), 'ScaleDiscrete')
})

### Rutile ----

test_that('Rutile_pal raises warning with large number, x > 5', {
  expect_warning(stevenUniverse_pal(palette = 'Rutile')(7))
  expect_warning(stevenUniverse_pal(palette = 'Rutile', reverse = TRUE)(7))
  expect_error(stevenUniverse_pal(palette = 'Rutile', n = 7))
})

test_that('scale_colour_Steven equals scale_color_Rutile', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Rutile'), scale_colour_stevenUniverse(palette = 'Rutile'))
})

test_that('scale_colour_Rutile works', {
  expect_is(scale_color_stevenUniverse(palette = 'Rutile'), 'ScaleDiscrete')
})

test_that('scale_fill_Rutile works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Rutile'), 'ScaleDiscrete')
})

### Rhodonite ----

test_that('Rhodonite_pal raises warning with large number, x > 8', {
  expect_warning(stevenUniverse_pal(palette = 'Rhodonite')(10))
  expect_warning(stevenUniverse_pal(palette = 'Rhodonite', reverse = TRUE)(10))
  expect_error(stevenUniverse_pal(palette = 'Rhodonite', n = 10))
})

test_that('scale_colour_Steven equals scale_color_Rhodonite', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Rhodonite'), scale_colour_stevenUniverse(palette = 'Rhodonite'))
})

test_that('scale_colour_Rhodonite works', {
  expect_is(scale_color_stevenUniverse(palette = 'Rhodonite'), 'ScaleDiscrete')
})

test_that('scale_fill_Rhodonite works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Rhodonite'), 'ScaleDiscrete')
})

### Flourite ----

test_that('Flourite_pal raises warning with large number, x > 8', {
  expect_warning(stevenUniverse_pal(palette = 'Flourite')(10))
  expect_warning(stevenUniverse_pal(palette = 'Flourite', reverse = TRUE)(10))
  expect_error(stevenUniverse_pal(palette = 'Flourite', n = 10))
})

test_that('scale_colour_Steven equals scale_color_Flourite', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Flourite'), scale_colour_stevenUniverse(palette = 'Flourite'))
})

test_that('scale_colour_Flourite works', {
  expect_is(scale_color_stevenUniverse(palette = 'Flourite'), 'ScaleDiscrete')
})

test_that('scale_fill_Flourite works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Flourite'), 'ScaleDiscrete')
})

### MegaPearl ----

test_that('MegaPearl_pal raises warning with large number, x > 9', {
  expect_warning(stevenUniverse_pal(palette = 'MegaPearl')(11))
  expect_warning(stevenUniverse_pal(palette = 'MegaPearl', reverse = TRUE)(11))
  expect_error(stevenUniverse_pal(palette = 'MegaPearl', n = 11))
})

test_that('scale_colour_Steven equals scale_color_MegaPearl', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'MegaPearl'), scale_colour_stevenUniverse(palette = 'MegaPearl'))
})

test_that('scale_colour_MegaPearl works', {
  expect_is(scale_color_stevenUniverse(palette = 'MegaPearl'), 'ScaleDiscrete')
})

test_that('scale_fill_MegaPearl works', {
  expect_is(scale_fill_stevenUniverse(palette = 'MegaPearl'), 'ScaleDiscrete')
})

### Sugilite ----

test_that('Sugilite_pal raises warning with large number, x > 6', {
  expect_warning(stevenUniverse_pal(palette = 'Sugilite')(8))
  expect_warning(stevenUniverse_pal(palette = 'Sugilite', reverse = TRUE)(8))
  expect_error(stevenUniverse_pal(palette = 'Sugilite', n = 8))
})

test_that('scale_colour_Steven equals scale_color_Sugilite', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Sugilite'), scale_colour_stevenUniverse(palette = 'Sugilite'))
})

test_that('scale_colour_Sugilite works', {
  expect_is(scale_color_stevenUniverse(palette = 'Sugilite'), 'ScaleDiscrete')
})

test_that('scale_fill_Sugilite works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Sugilite'), 'ScaleDiscrete')
})

### CrazyLaceAgate ----

test_that('CrazyLaceAgate_pal raises warning with large number, x > 7', {
  expect_warning(stevenUniverse_pal(palette = 'CrazyLaceAgate')(9))
  expect_warning(stevenUniverse_pal(palette = 'CrazyLaceAgate', reverse = TRUE)(9))
  expect_error(stevenUniverse_pal(palette = 'CrazyLaceAgate', n = 9))
})

test_that('scale_colour_Steven equals scale_color_CrazyLaceAgate', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'CrazyLaceAgate'), scale_colour_stevenUniverse(palette = 'CrazyLaceAgate'))
})

test_that('scale_colour_CrazyLaceAgate works', {
  expect_is(scale_color_stevenUniverse(palette = 'CrazyLaceAgate'), 'ScaleDiscrete')
})

test_that('scale_fill_CrazyLaceAgate works', {
  expect_is(scale_fill_stevenUniverse(palette = 'CrazyLaceAgate'), 'ScaleDiscrete')
})

### Sardonyx ----

test_that('Sardonyx_pal raises warning with large number, x > 8', {
  expect_warning(stevenUniverse_pal(palette = 'Sardonyx')(10))
  expect_warning(stevenUniverse_pal(palette = 'Sardonyx', reverse = TRUE)(10))
  expect_error(stevenUniverse_pal(palette = 'Sardonyx', n = 10))
})

test_that('scale_colour_Steven equals scale_color_Sardonyx', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Sardonyx'), scale_colour_stevenUniverse(palette = 'Sardonyx'))
})

test_that('scale_colour_Sardonyx works', {
  expect_is(scale_color_stevenUniverse(palette = 'Sardonyx'), 'ScaleDiscrete')
})

test_that('scale_fill_Sardonyx works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Sardonyx'), 'ScaleDiscrete')
})

### Alexandrite ----

test_that('Alexandrite_pal raises warning with large number, x > 8', {
  expect_warning(stevenUniverse_pal(palette = 'Alexandrite')(10))
  expect_warning(stevenUniverse_pal(palette = 'Alexandrite', reverse = TRUE)(10))
  expect_error(stevenUniverse_pal(palette = 'Alexandrite', n = 10))
})

test_that('scale_colour_Steven equals scale_color_Alexandrite', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Alexandrite'), scale_colour_stevenUniverse(palette = 'Alexandrite'))
})

test_that('scale_colour_Alexandrite works', {
  expect_is(scale_color_stevenUniverse(palette = 'Alexandrite'), 'ScaleDiscrete')
})

test_that('scale_fill_Alexandrite works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Alexandrite'), 'ScaleDiscrete')
})

### SmokyQuartz ----

test_that('SmokyQuartz_pal raises warning with large number, x > 6', {
  expect_warning(stevenUniverse_pal(palette = 'SmokyQuartz')(8))
  expect_warning(stevenUniverse_pal(palette = 'SmokyQuartz', reverse = TRUE)(8))
  expect_error(stevenUniverse_pal(palette = 'SmokyQuartz', n = 8))
})

test_that('scale_colour_Steven equals scale_color_SmokyQuartz', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'SmokyQuartz'), scale_colour_stevenUniverse(palette = 'SmokyQuartz'))
})

test_that('scale_colour_SmokyQuartz works', {
  expect_is(scale_color_stevenUniverse(palette = 'SmokyQuartz'), 'ScaleDiscrete')
})

test_that('scale_fill_SmokyQuartz works', {
  expect_is(scale_fill_stevenUniverse(palette = 'SmokyQuartz'), 'ScaleDiscrete')
})

### BluebirdAzurite ----

test_that('BluebirdAzurite_pal raises warning with large number, x > 5', {
  expect_warning(stevenUniverse_pal(palette = 'BluebirdAzurite')(7))
  expect_warning(stevenUniverse_pal(palette = 'BluebirdAzurite', reverse = TRUE)(7))
  expect_error(stevenUniverse_pal(palette = 'BluebirdAzurite', n = 7))
})

test_that('scale_colour_Steven equals scale_color_BluebirdAzurite', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'BluebirdAzurite'), scale_colour_stevenUniverse(palette = 'BluebirdAzurite'))
})

test_that('scale_colour_BluebirdAzurite works', {
  expect_is(scale_color_stevenUniverse(palette = 'BluebirdAzurite'), 'ScaleDiscrete')
})

test_that('scale_fill_BluebirdAzurite works', {
  expect_is(scale_fill_stevenUniverse(palette = 'BluebirdAzurite'), 'ScaleDiscrete')
})

### Sunstone ----

test_that('Sunstone_pal raises warning with large number, x > 9', {
  expect_warning(stevenUniverse_pal(palette = 'Sunstone')(11))
  expect_warning(stevenUniverse_pal(palette = 'Sunstone', reverse = TRUE)(11))
  expect_error(stevenUniverse_pal(palette = 'Sunstone', n = 11))
})

test_that('scale_colour_Steven equals scale_color_Sunstone', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Sunstone'), scale_colour_stevenUniverse(palette = 'Sunstone'))
})

test_that('scale_colour_Sunstone works', {
  expect_is(scale_color_stevenUniverse(palette = 'Sunstone'), 'ScaleDiscrete')
})

test_that('scale_fill_Sunstone works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Sunstone'), 'ScaleDiscrete')
})

### Opal ----

test_that('Opal_pal raises warning with large number, x > 7', {
  expect_warning(stevenUniverse_pal(palette = 'Opal')(9))
  expect_warning(stevenUniverse_pal(palette = 'Opal', reverse = TRUE)(9))
  expect_error(stevenUniverse_pal(palette = 'Opal', n = 9))
})

test_that('scale_colour_Steven equals scale_color_Opal', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'Opal'), scale_colour_stevenUniverse(palette = 'Opal'))
})

test_that('scale_colour_Opal works', {
  expect_is(scale_color_stevenUniverse(palette = 'Opal'), 'ScaleDiscrete')
})

test_that('scale_fill_Opal works', {
  expect_is(scale_fill_stevenUniverse(palette = 'Opal'), 'ScaleDiscrete')
})

### CrystalGems ----

test_that('CrystalGems_pal raises warning with large number, x > 12', {
  expect_warning(stevenUniverse_pal(palette = 'CrystalGems')(14))
  expect_warning(stevenUniverse_pal(palette = 'CrystalGems', reverse = TRUE)(14))
  expect_error(stevenUniverse_pal(palette = 'CrystalGems', n = 14))
})

test_that('scale_colour_Steven equals scale_color_CrystalGems', {
  expect_equal_scales(scale_color_stevenUniverse(palette = 'CrystalGems'), scale_colour_stevenUniverse(palette = 'CrystalGems'))
})

test_that('scale_colour_CrystalGems works', {
  expect_is(scale_color_stevenUniverse(palette = 'CrystalGems'), 'ScaleDiscrete')
})

test_that('scale_fill_CrystalGems works', {
  expect_is(scale_fill_stevenUniverse(palette = 'CrystalGems'), 'ScaleDiscrete')
})


#' @title Import "Titillium Web" font (deprecated)
#' @description Imports Titillium Web
#' @details import_*() functions taken from hrbrthemes.
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_titillium_web
#' @export
#' @importFrom extrafont font_import

import_titillium_web <- function() {
  .Deprecated("import_titiliumWeb")
  titillium_web_font_dir <- system.file("fonts", "Titillium-Web", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = titillium_web_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      titillium_web_font_dir
    )
  )
}

#' @title Import "Titillium Web" font
#' @description Imports Titillium Web
#' @details import_*() functions taken from hrbrthemes.
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_titilliumWeb
#' @export
#' @importFrom extrafont font_import

import_titilliumWeb <- function() {

  titillium_web_font_dir <- system.file("fonts", "Titillium-Web", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = titillium_web_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      titillium_web_font_dir
    )
  )
}

#' @title Import "Roboto Condensed" font (deprecated)
#' @description taken from hrbrthemes
#' @details import_*() functions taken from hrbrthemes.
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_roboto_condensed
#' @export
#' @importFrom extrafont font_import

import_roboto_condensed <- function() {
  .Deprecated("import_robotoCondensed")
  rc_font_dir <- system.file("fonts", "Roboto-Condensed", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = rc_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      rc_font_dir)
  )
}

#' @title Import "Roboto Condensed" font
#' @description taken from hrbrthemes
#' @details import_*() functions taken from hrbrthemes.
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_robotoCondensed
#' @export
#' @importFrom extrafont font_import

import_robotoCondensed <- function() {

  rc_font_dir <- system.file("fonts", "Roboto-Condensed", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = rc_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      rc_font_dir)
  )
}

#' @title Import "Akbar" font
#' @description The Simpsons Font ("Akbar" font)
#' @details import_*() functions taken from hrbrthemes.
#' Created by Jon Bernhardt.
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_simpsons
#' @export
#' @importFrom extrafont font_import

import_simpsons <- function() {

  simpsons_font_dir <- system.file("fonts", "Simpsons-Font", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = simpsons_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      simpsons_font_dir
    )
  )
}

#' @title Import "Cinzel" font
#' @description Game of Thrones font ("Cinzel" font)
#' @details import_*() functions taken from hrbrthemes, actual font is "Trajan Pro".
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_cinzel
#' @export
#' @importFrom extrafont font_import

import_cinzel <- function() {

  cinzel_font_dir <- system.file("fonts", "Cinzel", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = cinzel_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      cinzel_font_dir)
  )
}

#' @title Import "Get Schwifty" font
#' @description Rick & Morty font ("Get Schwifty")
#' @details Actual font is ... well, Justin Roiland's actual handwriting.
#' import_*() functions taken from hrbrthemes.
#' Created by jonizaak on DeviantArt!
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @rdname import_rickAndMorty
#' @export
#' @importFrom extrafont font_import

import_rickAndMorty <- function() {
  rickAndMorty_font_dir <- system.file("fonts", "Rick-And-Morty", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = rickAndMorty_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      rickAndMorty_font_dir
    )
  )
}

#' @title Import "Some-Time-Later" font
#' @description spongeBob SquarePants font ("Some-Time-Later")
#' @details import_*() functions taken from hrbrthemes. Created by Frederick R. Brennan.
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @rdname import_spongeBob
#' @export
#' @importFrom extrafont font_import

import_spongeBob <- function() {
  spongeBob_font_dir <- system.file("fonts", "SpongeBob", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = spongeBob_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      spongeBob_font_dir
    )
  )
}

#' @title Import "Slayer" font (deprecated)
#' @description The Last Airbender font ("Slayer")
#' @details Actual font is Herculanum.
#' import_*() functions taken from hrbrthemes.
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @rdname import_theLastAirbender
#' @export
#' @importFrom extrafont font_import

import_theLastAirbender <- function() {
  .Deprecated("import_avatar")
  theLastAirbender_font_dir <- system.file("fonts", "Slayer", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = theLastAirbender_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      theLastAirbender_font_dir
    )
  )
}

#' @title Import "Slayer" font
#' @description The Last Airbender font ("Slayer")
#' @details Actual font is Herculanum.
#' import_*() functions taken from hrbrthemes.
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @rdname import_avatar
#' @export
#' @importFrom extrafont font_import

import_avatar <- function() {
  theLastAirbender_font_dir <- system.file("fonts", "Slayer", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = theLastAirbender_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      theLastAirbender_font_dir
    )
  )
}

#' @title Import "Chelsea Market" font
#' @description Imports Chelsea Market (Hilda)
#' @details import_*() functions taken from hrbrthemes.
#' Formerly `import_ChelseaMarket()` which as been deleted rather than deprecated.
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_chelseaMarket
#' @export
#' @importFrom extrafont font_import

import_chelseaMarket <- function() {

  ChelseaMarket_font_dir <- system.file("fonts", "ChelseaMarket", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = ChelseaMarket_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      ChelseaMarket_font_dir
    )
  )
}

#' @title Import "Gravitation Falls" font
#' @description Imports Gravitation Falls font (Gravity Falls)
#' @details import_*() functions taken from hrbrthemes.
#' Font made by MaxiGamer on DeviantArt!
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_gravitationFalls
#' @export
#' @importFrom extrafont font_import

import_gravitationFalls <- function() {

  gravitationFalls_font_dir <- system.file("fonts", "GravitationFalls", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = gravitationFalls_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      gravitationFalls_font_dir
    )
  )
}

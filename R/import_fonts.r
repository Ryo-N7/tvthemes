#' @title import_univers
#' @description import 'Univers' font
#' @return OUTPUT_DESCRIPTION
#' @details import_*() functions inspired by hrbrmstrthemes
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @examples
#' \dontrun{
#' if(interactive()){
#'  import_univers()
#'  }
#' }
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_univers
#' @export
#' @importFrom extrafont font_import

import_univers <- function() {

  univers_font_dir <- system.file("fonts", "Univers", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = univers_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      univers_font_dir
    )
  )
}

#' @title import_univers_extrablack
#' @description FUNCTION_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_univers_extrablack
#' @export
#' @importFrom extrafont font_import
import_univers_extrablack <- function() {

  univers_extrablack_font_dir <- system.file("fonts", "Univers LT 93 ExtraBlackEx", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = univers_extrablack_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      univers_font_dir
    )
  )
}

#' @title import_champion_htf_heavyweight
#' @description imports Champion HTF-Heavyweight font
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_champion_htf_heaveyweight
#' @export
#' @importFrom extrafont font_import

import_champion_htf_heavyweight <- function() {

  champion_htf_heavyweight_font_dir <- system.file("fonts", "Champion-HTF-Heavyweight", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = champion_htf_heavyweight_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      champion_htf_heavyweight_font_dir
    )
  )
}

#' @title import_roboto_condensed
#' @description taken from hrbrmstrthemes
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_roboto_condensed
#' @export
#' @importFrom extrafont font_import

import_roboto_condensed <- function() {

  rc_font_dir <- system.file("fonts", "Roboto-Condensed", package = "hrbrthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = rc_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      rc_font_dir)
  )

}

#' @title import_simpsons
#' @description The Simpsons Font ("Akbar" font)
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
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


#' @title import_southpark
#' @description South Park font
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_southpark
#' @export
#' @importFrom extrafont font_import

import_southpark <- function() {
  southpark_font_dir <- system.file("fonts", "South-Park", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = southpark_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      southpark_font_dir
    )
  )
}

#' @title import_rickAndMorty
#' @description Rick & Morty font ("Get Schwifty")
#' @return OUTPUT_DESCRIPTION
#' @details Actual font is ... well, Justin Roiland's actual handwriting
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

#' @title import_spongeBob
#' @description spongeBob SquarePants font ("Some-Time-Later")
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
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

#' @title import_theLastAirbender
#' @description The Last Airbender font ("Slayer")
#' @return OUTPUT_DESCRIPTION
#' @details Actual font is Herculanum (can be bought for $35)
#' @rdname import_theLastAirbender
#' @export
#' @importFrom extrafont font_import

import_theLastAirbender <- function() {
  theLastAirbender_font_dir <- system.file("fonts", "Slayer", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = theLastAirbender_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      theLastAirbender_font_dir
    )
  )
}

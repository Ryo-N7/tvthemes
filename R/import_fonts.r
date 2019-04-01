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

  suppressWarnings(suppressMessages(extrafont::font_import(univers_font_dir, prompt = FALSE)))

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

  suppressWarnings(suppressMessages(extrafont::font_import(univers_extrablack_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      univers_font_dir
    )
  )
}

#' @title import_champion_htf_heaveyweight
#' @description imports Champion HTF-Heavyweight font
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_champion_htf_heaveyweight
#' @export
#' @importFrom extrafont font_import

import_champion_htf_heaveyweight <- function() {

  champion_htf_heaveyweight_font_dir <- system.file("fonts", "Champion-HTF-Heavyweight", package = "tvthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(champion_htf_heaveyweight_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      champion_htf_heaveyweight_font_dir
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

  rc_font_dir <- system.file("fonts", "roboto-condensed", package = "hrbrthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(rc_font_dir, prompt=FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      rc_font_dir)
  )

}

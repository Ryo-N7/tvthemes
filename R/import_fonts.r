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

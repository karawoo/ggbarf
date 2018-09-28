#' Geom Barf
#'
#' Like `geom_bar()`, but grosser.
#'
#' @inheritParams ggtextures::geom_isotype_bar
#' @examples
#' set.seed(123)
#' dat <- data.frame(x = sample(letters[1:3], 6, replace = TRUE))
#'
#' ggplot(dat, aes(x)) +
#'   geom_barf() +
#'   theme_minimal()
#'
#' @export
geom_barf <- function(mapping = NULL, data = NULL,
                      stat = "count", position = "stack",
                      ...,
                      img_height = grid::unit(1, "native"),
                      img_width = NULL,
                      ncol = 1, nrow = NA,
                      width = NULL,
                      na.rm = FALSE,
                      show.legend = NA,
                      inherit.aes = TRUE) {

  layer(
    data = data,
    mapping = mapping,
    stat = stat,
    geom = GeomBarf,
    position = position,
    show.legend = show.legend,
    inherit.aes = inherit.aes,
    params = list(
      img_height = img_height,
      img_width = img_width,
      ncol = ncol,
      nrow = nrow,
      width = width,
      na.rm = na.rm,
      ...
    )
  )
}

#' @rdname geom_barf
#' @format NULL
#' @usage NULL
#' @export
GeomBarf <- ggproto("GeomBarf", GeomIsotypeBar,
  default_aes = aes(
    colour = NA, fill = NA, size = 0.5, linetype = 1, alpha = NA,
    hjust = 0.5, vjust = 0, image = "https://twemoji.maxcdn.com/2/72x72/1f92e.png"
  ),
  required_aes = c("x", "y")
)

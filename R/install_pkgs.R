# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

# hello <- function() {
#   print("Hello, world!")
# }
#

# pkgs_lists<-c("pak","fanyi","clusterProfiler","enrichplot")

#' Title
#'
#' @param packages this is a must packages c("pak","fanyi","clusterProfiler","enrichplot")
#'
#' @return
#' @export
#'
#' @examples
#' @importFrom utils install.packages
#' @importFrom magrittr %>%
#' @importFrom pak pkg_install
#' @importFrom utils install.packages
#' @importFrom showtext showtext_auto

install_packages_with_pak <- function(packages) {
  # 检查pak是否已安装
  if (!requireNamespace("pak", quietly = TRUE)) {
    install.packages("pak")
  }

  # 使用pak安装所需包
  pak::pkg_install(packages)
}

# 还需要解决字体的问题，我的服务器不会显示中文
load_font_ch<-function(yes=1){
  if (!requireNamespace("showtext", quietly = TRUE)) {
    pak::pkg_install("showtext")
  }
  require("showtext")
  showtextdb::font_install(source_han_serif())
  showtext::showtext_auto(enable = TRUE)
}


# load_font_ch(1)

# 使用示例
# install_packages_with_pak(pkgs_lists)

# # 还有直接的向量化函数，厉害了
# vectorized_function <- Vectorize(check_and_install_packages)
# invisible(lapply(pkgs_install,check_and_install_packages))
#
# vectorized_function(pkgs_install)

# 因为Y叔的函数写好了，但是对于api以及pubmed有访问时间限制，不能太多的并发，
# 所以加入pause时间，其实你也可以自己加上定义时间
#' Title
#'
#' @param timesec 停留时间为秒，默认2秒
#' @param ... 跟随fanyi包函数translate中的其他可能参数参数
#'
#' @return No return value, called for side effects
#' @export
#'
#' @examples
#'
translate_with_pause <- function(timesec=2,...) {
  result <- fanyi::translate(...)
  Sys.sleep(timesec)  # 暂停 2 秒，您可以根据需要调整这个时间
  return(result)
}

# # 使用 lapply 调用新的函数
# gene_bitr$ENTREZID[1:10]
# results <- lapply(gene_bitr$ENTREZID[1:10], gene_summary_with_pause)


# 定义一个新的函数，它调用 gene_summary 并暂停
#' Title
#'
#' @param gene 和gene_summary的参数一样，也是entrezID
#' @param timesec 停留时间为秒，默认2秒
#' @param ... 跟随fanyi包函数gene_summary中的其他可能参数参数
#'
#' @return
#' @export
#'
#' @examples
gene_summary_with_pause <- function(gene,timesec=2,...) {
  result <- fanyi::gene_summary(gene,...)
  Sys.sleep(timesec)  # 暂停 0.5 秒，您可以根据需要调整这个时间
  return(result)
}

# # 使用 lapply 调用新的函数
# gene_bitr$ENTREZID[1:10]
#
# results <- lapply(gene_bitr$ENTREZID, gene_summary_with_pause)

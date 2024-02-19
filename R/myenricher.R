# gpt4 优化后的y叔的enricher通用
#' Title
#'
#' @param def The "def" is to be consistent with the results obtained by the company, as they filtered the meridians based on the selected genes.
#' Perhaps my understanding is incorrect, but Y's results also came out after filtering, but the p-value is significant. After filtering, the p-value is no longer significant.
#' The default parameter is "luckcp".
#' @param gson "gson" is your multiple lists, of course, one of them may have already been processed.
#' @param gene Your list of significant differentially expressed genes, or your list of genes that you consider important.
#' @param ... Other parameters can be acctpted by the “enricher” function
#'
#' @return
#' @export
#' @examples
#' @importFrom purrr map
#' @importFrom magrittr %>%
#' @importFrom clusterProfiler enricher
myenricher <- function(def = NULL, gson = NULL,gene,...) {
  # 参数验证
  if (is.null(def) || is.null(gson)) {
    stop("def and gson must not be NULL")
  }

  # 提取重复的代码到一个内部函数
  process_gson <- function(gson,gene) {
    subid <- gson@gsid2gene
    subid2 <- subid[subid$gene %in% gene,]
    gson@gsid2gene <- subid2
    return(gson)
  }

  # 主逻辑
  if (def == "luckcp") {
    if (length(gson) > 1) {
      gson_sub <- purrr::map(revertToCommonList(gson), process_gson, gene) %>% `class<-`(c("GSONList", "list"))
    } else {
      gson_sub <- process_gson(gson, gene)
    }
    clusterProfiler::enricher(gson = gson_sub, gene=gene,...)
  } else {
    clusterProfiler::enricher(gson = gson,gene=gene,...)
  }
}

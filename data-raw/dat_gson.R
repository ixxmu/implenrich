## code to prepare `dat_gson` dataset goes here

usethis::use_data(dat_gson, overwrite = TRUE)
# 3 kegg web offical 官网最新
# 在 sgbig/ting_wang/ting_geo.rmd找到了，但不是最原始的探索版
# 你可以在这里找到下载json
# https://www.genome.jp/kegg-bin/show_organism?menu_type=gene_catalogs&org=hsa

# 这个包括了symbol 和entrezID，这是手动下载了json文件，在官网
dat_gson <- jsonlite::fromJSON("./data-raw/hsa00001.json", flatten=TRUE)
# 注意上面这个无敌函数，jsonlite包
dat_kegg<-
  tidyr::unnest(dat_gson$children) %>% unnest() %>% unnest() %>%
  separate(col = name3,sep = ";",into=c("genes","details")) %>%
  separate(col = details,sep = "\t",into=c("detail",NA)) %>%
  separate(col = genes,sep = " ",into=c("entrezID","symbol")) %>%
  separate(col = name,sep = " ",into=c("s1ID","L1"),extra = "merge") %>%
  separate(col = name1,sep = " ",into=c("s2ID","L2"),extra = "merge") %>%
  mutate(s3ID=str_split(name2,
                        " ",n=2,simplify = T)[,1],
         .before =entrezID ) %>%
  mutate(s3ID_raw=str_split(name2,
                            " ",n=2,simplify = T)[,2],
         .before =entrezID ) %>%
  mutate(L3=str_split(s3ID_raw,
                      " \\[PATH:",n=2,simplify = T)[,1],
         .before =entrezID ) %>%
  dplyr::select(-c(name2,s3ID_raw))

my2st <- function(v1) {
  deparse(substitute(v1))
}

my2st(dat_kegg)

unique(dat_kegg$L3)
saveRDS(dat_kegg,file = paste0(my2st(dat_kegg),
                               format(Sys.Date(), "_%d_%m_%Y"),
                               ".rds") )

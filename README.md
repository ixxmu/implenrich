
<!-- README.md is generated from README.Rmd. Please edit that file -->

# impenrich

<!-- badges: start -->
<!-- badges: end -->

The main function of this R package is to supplement Yulab enricher, as
well as some other middleware. It is mainly for personal use and
recording. If I don’t record it, I will forget it all.

## Installation

You can install the development version of impenrich from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ixxmu/implenrich")
```

To cite fanyi in publications use:

G Yu. Using fanyi to assist research communities in retrieving and
interpreting information. ***bioRxiv***, 2023. doi:
[10.1101/2023.12.21.572729](https://www.biorxiv.org/content/10.1101/2023.12.21.572729).

## :writing_hand: Authors

## :beginner: Usages

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(impenrich)
#> 
#> Registered S3 methods overwritten by 'treeio':
#>   method              from    
#>   MRCA.phylo          tidytree
#>   MRCA.treedata       tidytree
#>   Nnode.treedata      tidytree
#>   Ntip.treedata       tidytree
#>   ancestor.phylo      tidytree
#>   ancestor.treedata   tidytree
#>   child.phylo         tidytree
#>   child.treedata      tidytree
#>   full_join.phylo     tidytree
#>   full_join.treedata  tidytree
#>   groupClade.phylo    tidytree
#>   groupClade.treedata tidytree
#>   groupOTU.phylo      tidytree
#>   groupOTU.treedata   tidytree
#>   inner_join.phylo    tidytree
#>   inner_join.treedata tidytree
#>   is.rooted.treedata  tidytree
#>   nodeid.phylo        tidytree
#>   nodeid.treedata     tidytree
#>   nodelab.phylo       tidytree
#>   nodelab.treedata    tidytree
#>   offspring.phylo     tidytree
#>   offspring.treedata  tidytree
#>   parent.phylo        tidytree
#>   parent.treedata     tidytree
#>   root.treedata       tidytree
#>   rootnode.phylo      tidytree
#>   sibling.phylo       tidytree
#> If you use impenrich in published research, please cite:
#> Guangchuang Yu. Using fanyi to assist research communities in retrieving and interpreting information. bioRxiv 2023, doi: 10.1101/2023.12.21.572729
## basic example code
```

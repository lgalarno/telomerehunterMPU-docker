args<-commandArgs(TRUE)
instLib = args[1]

# source("http://bioconductor.org/biocLite.R")

install.packages("BiocManager")
BiocManager::install("biocLite")
# install.packages("devtools")

# library(devtools)

# remotes has less requirements than devtools on the Linux side
# install.packages("remotes")
# library(remotes)

### Newer packages kinda work, but give many warnings.
install.packages("ggplot2")
install.packages("reshape2")
install.packages("gridExtra")
install.packages("RColor2023Brewer")
install.packages("cowplot")
install.packages("dplyr")
install.packages("svglite")  #version = "1.2.1" won't install

# options(download.file.method = "auto")

# if ( version$major > 3 || ( version$major == 3 && version$minor >= 2 )) {
#   ipak(c("stringi"))
# } else {
#   install.packages(stringi_for_legacyR, repos=NULL, type="source")
# }
# install.packages("BiocManager")

# install_version("reshape2", version = "1.4.1")
# install_version("gridExtra", version = "2.2.1")
# install_version("RColorBrewer", version = "1.1-2")
# install_version("cowplot", version = "0.9.2")
# # install_version("svglite", version = "1.2.1")
# install_version("dplyr", version = "1.0.2")
# # install ggplot2 last because other packages might install ggplot2 as requirement, but telomerehunter is compatible with an older version.
# install_version("ggplot2", version = "2.1.0")  

# whith telomerehunter 1.1.0
# ggplot2 2.1.0
# reshape2 1.4.1
# gridExtra 2.2.1
# RColorBrewer 1.1-2
# cowplot 0.9.2
# svglite 1.2.1
# dplyr 1.0.2

# new for R 3.6 as of 03/2023
# ggplot2 3.4.1
# reshape2 1.4.4
# gridExtra 2.3
# RColorBrewer 1.1-3
# cowplot 1.1.1
# svglite 2.1.1
# dplyr 1.0.2
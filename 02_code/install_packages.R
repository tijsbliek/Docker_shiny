# code to install packages in the docker file
install.packages("tidyverse")
install.packages("shiny")
install.packages("shinythemes")
install.packages("DESeq2")
install.packages("dplyr")
install.packages("cluster")
install.packages("dendextend")
install.packages("clorRamps")
install.packages("RColorBrewer")
install.packages("gplots")
install.packages("vegan")
install.packages("apcluster")
install.packages("dynamicTreeCut")
install.packages("reshape2")
install.packages("e1071")
install.packages("tidyr")
install.packages("fpc")
install.packages("ggplot2")
install.packages("DT")

# The following two commands remove any previously installed H2O packages for R.
# if ("package:h2o" %in% search()) { detach("package:h2o", unload=TRUE) }
# if ("h2o" %in% rownames(installed.packages())) { remove.packages("h2o") }

# Next, we download packages that H2O depends on.
pkgs <- c("RCurl","jsonlite")
for (pkg in pkgs) {
if (! (pkg %in% rownames(installed.packages()))) { install.packages(pkg) }
}

# Now we download, install and initialize the H2O package for R.
install.packages("h2o", type="source", repos="http://h2o-release.s3.amazonaws.com/h2o/rel-yates/1/R")


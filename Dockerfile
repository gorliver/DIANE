FROM rocker/shiny:4.0.3

RUN apt-get update && apt-get install -y  gdal-bin git-core libcurl4-openssl-dev libgdal-dev libgeos-dev libgeos++-dev libgit2-dev libglpk-dev libgmp-dev libssh2-1-dev libssl-dev libudunits2-dev libxml2-dev make pandoc pandoc-citeproc zlib1g-dev && rm -rf /var/lib/apt/lists/*
RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/', Bioc = 'http://www.bioconductor.org/packages/release/bioc'), download.file.method = 'libcurl')" >> /usr/local/lib/R/etc/Rprofile.site
RUN R -e 'install.packages("remotes")'
RUN R -e 'install.packages("BiocManager")'

RUN R -e 'remotes::install_github("r-lib/remotes", ref = "97bbf81")'

RUN Rscript -e 'BiocManager::install("org.Ce.eg.db",upgrade="never")'
RUN Rscript -e 'BiocManager::install("org.Mm.eg.db",upgrade="never")'
RUN Rscript -e 'BiocManager::install("org.Dm.eg.db",upgrade="never")'
RUN Rscript -e 'BiocManager::install("org.Hs.eg.db",upgrade="never")'
RUN Rscript -e 'BiocManager::install("org.EcK12.eg.db",upgrade="never")'
RUN Rscript -e 'BiocManager::install("org.At.tair.db",upgrade="never")'
RUN Rscript -e 'BiocManager::install("GO.db",upgrade="never")'
RUN Rscript -e 'BiocManager::install("edgeR",upgrade="never")'
RUN Rscript -e 'BiocManager::install("limma",upgrade="never")'
RUN Rscript -e 'BiocManager::install("TCC",upgrade="never")'
RUN Rscript -e 'BiocManager::install("clusterProfiler",upgrade="never")'
RUN Rscript -e 'BiocManager::install("GENIE3",upgrade="never")'
RUN Rscript -e 'BiocManager::install("coseq",upgrade="never")'
RUN Rscript -e 'BiocManager::install("AnnotationDbi",upgrade="never")'


RUN Rscript -e 'remotes::install_version("stringr",upgrade="never", version = "1.4.0")'
RUN Rscript -e 'remotes::install_version("RColorBrewer",upgrade="never", version = "1.1-2")'
RUN Rscript -e 'remotes::install_version("reshape2",upgrade="never", version = "1.4.4")'
RUN Rscript -e 'remotes::install_version("ggplot2",upgrade="never", version = "3.3.3")'
RUN Rscript -e 'remotes::install_version("igraph",upgrade="never", version = "1.2.6")'
RUN Rscript -e 'remotes::install_version("gridExtra",upgrade="never", version = "2.3")'
RUN Rscript -e 'remotes::install_version("promises",upgrade="never", version = "1.2.0.1")'
RUN Rscript -e 'remotes::install_version("htmltools",upgrade="never", version = "0.5.1.1")'
RUN Rscript -e 'remotes::install_version("shiny",upgrade="never", version = "1.6.0")'
RUN Rscript -e 'remotes::install_version("pkgload",upgrade="never", version = "1.2.0")'
RUN Rscript -e 'remotes::install_version("knitr",upgrade="never", version = "1.31")'
RUN Rscript -e 'remotes::install_version("randomForest",upgrade="never", version = "4.6-14")'
RUN Rscript -e 'remotes::install_version("foreach",upgrade="never", version = "1.5.1")'
RUN Rscript -e 'remotes::install_version("shinydashboard",upgrade="never", version = "0.7.1")'
RUN Rscript -e 'remotes::install_version("config",upgrade="never", version = "0.3.1")'
RUN Rscript -e 'remotes::install_version("loggit",upgrade="never", version = "2.1.1")'
RUN Rscript -e 'remotes::install_version("ggVennDiagram",upgrade="never", version = "0.5.0")'
RUN Rscript -e 'remotes::install_version("future",upgrade="never", version = "1.21.0")'
RUN Rscript -e 'remotes::install_version("tictoc",upgrade="never", version = "1.0")'
RUN Rscript -e 'remotes::install_version("rmarkdown",upgrade="never", version = "2.7")'
RUN Rscript -e 'remotes::install_version("rfPermute",upgrade="never", version = "2.5")'
RUN Rscript -e 'remotes::install_version("ggridges",upgrade="never", version = "0.5.3")'
RUN Rscript -e 'remotes::install_version("ggraph",upgrade="never", version = "2.0.5")'
RUN Rscript -e 'remotes::install_version("ade4",upgrade="never", version = "1.7-16")'
RUN Rscript -e 'remotes::install_version("doRNG",upgrade="never", version = "1.8.2")'
RUN Rscript -e 'remotes::install_version("doParallel",upgrade="never", version = "1.0.16")'
RUN Rscript -e 'remotes::install_version("plotly",upgrade="never", version = "4.9.3")'
RUN Rscript -e 'remotes::install_version("visNetwork",upgrade="never", version = "2.0.9")'
RUN Rscript -e 'remotes::install_version("shinyalert",upgrade="never", version = "2.0.0")'
RUN Rscript -e 'remotes::install_version("dashboardthemes",upgrade="never", version = "1.1.3")'
RUN Rscript -e 'remotes::install_version("shinybusy",upgrade="never", version = "0.2.2")'
RUN Rscript -e 'remotes::install_version("pheatmap",upgrade="never", version = "1.0.12")'
RUN Rscript -e 'remotes::install_version("shinyWidgets",upgrade="never", version = "0.5.7")'
RUN Rscript -e 'remotes::install_version("shinydashboardPlus",upgrade="never", version = "2.0.0")'
RUN Rscript -e 'remotes::install_version("DT",upgrade="never", version = "0.17")'
RUN Rscript -e 'remotes::install_version("golem",upgrade="never", version = "0.2.1")'

RUN Rscript -e 'remotes::install_github("ryapric/loggit@8293ba322c86a80b81b07a81e1ae4f9a64b395a7")'
RUN Rscript -e 'remotes::install_version("lubridate",upgrade="never")'
RUN Rscript -e 'remotes::install_version("shinythemes",upgrade="never")'
RUN Rscript -e 'remotes::install_version("patchwork",upgrade="never")'

RUN mkdir /build_zone
ADD . /build_zone
WORKDIR /build_zone
RUN R -e 'remotes::install_local(upgrade="never")'
EXPOSE 8086

COPY shiny-customized.config /etc/shiny-server/shiny-server.conf

CMD ["/usr/bin/shiny-server"]

FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN Rscript -e "options(repos = c(CRAN = "https://cran.r-project.org"));
BiocManager::repositories();
local_deps <- remotes::local_package_deps(dependencies = TRUE);
deps <- remotes::dev_package_deps(dependencies = TRUE, repos = BiocManager::repositories());
BiocManager::install(local_deps[local_deps %in% deps$package[deps$diff != 0]], update=TRUE, ask=FALSE)"


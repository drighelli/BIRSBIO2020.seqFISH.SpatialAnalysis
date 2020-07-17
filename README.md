# BuildABiocWorkshop2020

This package is a template for building a Bioconductor 2020 workshop. The package
includes Github actions to:

1. Set up bioconductor/bioconductor_docker:devel on Github resources
2. Install package dependencies for your package (based on the `DESCRIPTION` file)
3. Run `rcmdcheck::rcmdcheck`
4. Build a pkgdown website and push it to github pages
5. Build a docker image with the installed package and dependencies

## Responsibilities

This year, package authors will be primarily responsible for:

1. Creating a landing site of their choosing for their workshops (a website). This website should be listed in the `DESCRIPTION` file as the `URL`.
2. Creating a docker image that will contain workshop materials and the installed packages necessary to run those materials. The name of the resulting docker image, including "tag" if desired, should be listed in a non-standard tag, `DockerImage:` in the `DESCRIPTION` file. 

Both of those tasks can be accomplished using the Github actions included in this template package. 

## Details

For detailed instructions, see the `How to build a workshop` article/vignette.

## Results of successful deployment

- A working docker image that contains the installed package and dependencies.
- An up-to-date `pkgdown` website at https://drighelli.github.io/BIRSBIO2020.seqFISH.SpatialAnalysis/
- Docker image will be tagged with `latest`, `sha-XXXXXX` where `XXXXXX` is the hash of the current `master` commit, and `master`. 

## To use the resulting image:

```sh
docker run -e PASSWORD=<choose_a_password_for_rstudio> -p 8787:8787 birsbio2020_seqfish_spatialanalysis
```
Once running, navigate to https://localhost:8787/ and then login with `rstudio`:`yourchosenpassword`. 

To try with **this** repository docker image:

```sh
docker run -e PASSWORD=abc -p 8787:8787 drighelli/birsbio2020_seqfish_spatialanalysis
```


## Whatcha get

https://drighelli.github.io/BIRSBIO2020.seqFISH.SpatialAnalysis

![dockerhub](https://github.com/seandavi/BuildABiocWorkshop2020/raw/master/inst/images/dockerhub_result.png)

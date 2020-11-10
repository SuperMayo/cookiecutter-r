# R cookiecutter

A cookiecutter template for R projects.

# Requirements
Install `cookiecutter` using:

`pip`:
```
pip install cookiecutter
```

`conda`:

```
conda install -c conda-forge cookiecutter
```

`homebrew`:

```
brew install cookiecutter
```

# Usage

`cookiecutter https://github.com/supermayo/cookiecutter-r.git`
Cookiecutter will ask you some questions and TADA!

# Structure
```
    ├── LICENSE                     
    ├── [Makefile] or [main.R]      <- Makefile or main script 
    ├── README.md                   <- Project description and build helper.
    ├── data 
    |   ├── raw                     <- Unprocessd, immutable original data.
    |   ├── interim                 <- Intermediate data that has been transformed.
    |   └── processed               <- Final data used for analysis.
    |
    ├── docs                        <- Project documentation. Data description etc.
    |
    ├── notebooks                   <- Rmarkdown or jupyter notebooks. Self-contained
    |                                  explorations.
    |
    ├── reports                     <- Generated analysis output, slides and paper.
    |   ├── figures                 <- Generated graphics (PDF, JPEG).
    |   ├── tables                  <- Generated tables (PDF, LaTeX).
    |   ├── slides                  <- LaTeX beamer, ppt, slideshow, etc. 
    |   └── draft                   <- Article draft.
    |
    ├── references                  <- Third party articles, sources, data codebooks, etc.
    |
    └── src                         <- Source code for project.
        ├── modules                 <- Reusable pieces of code.
        ├── data                    <- Scripts to download, generate, and clean data.
        └── analysis                <- Scripts for estimations, graphs, etc.

```
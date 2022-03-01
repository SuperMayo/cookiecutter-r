#!/usr/bin/env bash

# Dependency manager
####################
{% if cookiecutter.dependency_manager == "renv" %}
Rscript -e "renv::init()"
{% endif %}

# Build tool
############
{% if cookiecutter.build_engine != "Makefile" %}
rm Makefile
{% endif %}
{% if cookiecutter.build_engine != "R-script" %}
rm main.R
{% endif %}

{% if cookiecutter.build_engine == "DVC" %}
dvc init
{$endif %}

{% if cookiecutter.build_engine == "R Targets"}
{% if cookiecutter.dependency_manager == "renv" %}
Rscript -e "renv::install('targets')"
{% endif %}
touch _targets.R
{% endif %}

# Git
#####
git init
git config user.email {{cookiecutter.email}}
git add .
git commit -m 'Initial commit'
{% if cookiecutter.git_remote != "If known. [Enter] to ignore" %}
    git remote add origin {{cookiecutter.git_remote}}
    git push -u origin master
{% endif %}

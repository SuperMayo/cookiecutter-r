# {{cookiecutter.project_name}}

{{cookiecutter.project_desc}}

# Installation
{%- if cookiecutter.git_remote != "If known. [Enter] to ignore" -%}
Clone the repository
`git clone {{cookiecutter.git_remote}}`
{%- endif -%}
Go inside the directory and run
{%- if cookiecutter.build_engine == "Makefile" -%}
`make`
{% elif cookiecutter.build_engine == "R-script" -%}
`Rscript main.R`
{%- endif -%}

## Author
{{cookiecutter.author}}
#if (!requireNamespace("remotes")) install.packages("remotes")
#remotes::install_github("rstudio/blogdown")
#blogdown::install_hugo("0.103.1")

blogdown::stop_server()

blogdown::build_site()

blogdown::serve_site()

# http://localhost:4321/r4fun/


library(rmarkdown)
library(tidyverse)

file <- "02-metrics/README.Rmd"
tempfile <- fs::path_ext_set(file, "tmp.Rmd")
file %>% 
  read_lines() %>% 
  dynbenchmark::render_equations(format = "markdown") %>%
  write_lines(tempfile)
render(
  tempfile,
  output_file = fs::path_ext_set(file, "md") %>% fs::path_file(),
  output_format = rmarkdown::github_document(toc = TRUE, toc_depth = 1)
)
file.remove(tempfile)
browseURL(fs::path_ext_set(file, "html"))
Sys.sleep(1)
file.remove(fs::path_ext_set(file, "html"))

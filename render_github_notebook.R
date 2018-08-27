library(rmarkdown)
library(tidyverse)
file <- "02-metric_characterisation/README.Rmd"
tempfile <- fs::path_ext_set(file, "tmp.Rmd")
file %>% 
  read_lines() %>% 
  str_replace_all("\\$[^\\$]+\\$", function(x) paste0("![](https://latex.codecogs.com/gif.latex?", URLencode(str_sub(x, 2, -2)), ")")) %>%
  write_lines(tempfile)
render(
  tempfile,
  output_file = fs::path_ext_set(file, "md") %>% fs::path_file(),
  output_format = rmarkdown::github_document(toc = TRUE, toc_depth = 1)
)
file.remove(tempfile)
file.remove(fs::path_ext_set(file, "html"))

#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

library(tidyverse)
plot <- ggplot(iris,
       aes(Petal.Length,
           Petal.Width,
           colour = Species)) +
            geom_point()

# don't touch			
ggsave(filename = args[1] , plot = plot)

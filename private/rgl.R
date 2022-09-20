library(rgl)

by = 20
sequence <- seq(from = 0, to = 255, by = by)

open3d()
for (z in c(sequence[1], sequence[length(sequence)])) {
  for (x in sequence) {
    for (y in sequence) {
      colour = c(x, y, z) %>% 
        as.hexmode() %>% 
        format(width = 2) %>% 
        paste(collapse = "") %>%
        paste0("#", .)
      print(colour)
      shade3d( translate3d( cube3d(col = colour), 2*x/by, 2*y/by, 2*z/by) )
    }
  }
}

for (x in c(sequence[1], sequence[length(sequence)])) {
  for (y in sequence) {
    for (z in sequence[2:(length(sequence) - 1)]) {
      colour = c(x, y, z) %>% 
        as.hexmode() %>% 
        format(width = 2) %>% 
        paste(collapse = "") %>%
        paste0("#", .)
      print(colour)
      shade3d( translate3d( cube3d(col = colour), 2*x/by, 2*y/by, 2*z/by) )
    }
  }
}

for (y in c(sequence[1], sequence[length(sequence)])) {
  for (x in sequence[2:(length(sequence) - 1)]) {
    for (z in sequence[2:(length(sequence) - 1)]) {
      colour = c(x, y, z) %>% 
        as.hexmode() %>% 
        format(width = 2) %>% 
        paste(collapse = "") %>%
        paste0("#", .)
      print(colour)
      shade3d( translate3d( cube3d(col = colour), 2*x/by, 2*y/by, 2*z/by) )
    }
  }
}

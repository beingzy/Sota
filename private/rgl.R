library(rgl)

by = 50
sequence <- seq(from = 0, to = 255, by = by)

open3d()
for(x in sequence){
  for (y in sequence) {
    for (z in sequence) {
      colour = c(x, y, z) %>% 
        as.hexmode() %>% 
        format(width = 2) %>% 
        paste(collapse = "") %>%
        paste0("#", .)
      print(colour)
      shade3d( translate3d( cube3d(col = colour), x/by, y/by, z/by) )
    }
    
  }
}


# case z == min(sequence) | z == max(sequence)
# for x in range, y in range draw
# case z != min(sequence) & z != max(sequence)
# y == min(sequence) | y == max(sequence)
# for x in range, z in range draw(x,y,z)

open3d()
for(x in sequence){
  for (y in sequence) {
    for (z in sequence) {
      if(z == min(sequence) | z == max(sequence)){
      colour = c(x, y, z) %>% 
        as.hexmode() %>% 
        format(width = 2) %>% 
        paste(collapse = "") %>%
        paste0("#", .)
      print(colour)
      shade3d( translate3d( cube3d(col = colour), 2*x/by, 2*y/by, 2*z/by) )
    }
    if(x == min(sequence) | x == max(sequence)){
      colour = c(x, y, z) %>% 
        as.hexmode() %>% 
        format(width = 2) %>% 
        paste(collapse = "") %>%
        paste0("#", .)
      print(colour)
      shade3d( translate3d( cube3d(col = colour), 2*x/by, 2*y/by, 2*z/by) )
    }}
  }
}

# dokończę w domu
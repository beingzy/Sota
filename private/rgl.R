library(rgl)
open3d()
shade3d( translate3d( cube3d(col = "green"), 0, 0, 0) )
shade3d( translate3d( cube3d(col = "#FFFFFF"), 2, 0, 0) )

#strtoi(
x =  as.hexmode( 16)
y =  as.hexmode(120)

x = 255 %>% as.integer() %>% as.hexmode()
y = 122 %>% as.integer() %>% as.hexmode()
z = 78 %>% as.integer() %>% as.hexmode()

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


open3d()
for(x in sequence){
  for (y in sequence) {
    for (z in sequence) {
      if(x > min(seq) & x < max(seq))
      colour = c(x, y, z) %>% 
        as.hexmode() %>% 
        format(width = 2) %>% 
        paste(collapse = "") %>%
        paste0("#", .)
      print(colour)
#      shade3d( translate3d( cube3d(col = colour), x/by, y/by, z/by) )
    }
    
  }
}

# dokończę w domu
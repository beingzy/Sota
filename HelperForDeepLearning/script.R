#
library("png")
letters <- LETTERS[1:10]
path <- "../notMNIST_large/"
data <- data.frame(matrix(ncol = 0, nrow = 2))
for(letter in letters){
files <- data.frame(
  class = letter, 
  file =  paste(paste(path,letter,sep = ""),
  list.files(path = paste(path,letter,sep = "")),
  sep = "/")  )  
data <- rbind(data, files)
}
data$file <- as.character(data$file)

# plot random image
plotPNG = function(x){
  plot(1)
  rasterImage(readPNG(data[x,2]), 0.8, 0.8, 1.2, 1.2)
  title(data[x,1], font.main=2)}

plotPNG(sample(1:nrow(data),1))

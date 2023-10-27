
library(openxlsx)

data <- read.csv("STRING network default node.csv")

# Just for the identifier column and for the betweenness and closeness centrality

data_sub <- data[, c(1, 3, 4)]
data_sub

# Take the 7 higher betweenness centrality
data_ordered <- data[order(-data[,3]),]
top_7 <- data_ordered[1:7, c(1, 3)]
top_7

# Take the 7 higher closeness centrality

data_ordered_c <- data[order(-data[,4]),]
top_7 <- data_ordered_c[1:7, c(1, 4)]
top_7

# Take the 50 higher betweenness centrality
data_ordered_log <- data_log[order(-abs(data_log[,22])),]
top_50 <- data_ordered_log[1:70, c(1, 22)]
 
top_50

# check if the toop 7 are in the top50


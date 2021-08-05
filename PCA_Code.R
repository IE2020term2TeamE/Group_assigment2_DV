install.packages('factoextra')
library(factoextra)

df = read.csv('WHO Data for PCA.csv')



str(df$X)


#library(tidyverse)
#df %>% remove_rownames %>% column_to_rownames(var='X')
str(df$X)

df$X = as.numeric(as.factor(df$X))

#who.pca <- as.data.frame(prcomp(df, scale= TRUE)$X)

who.pca <- (prcomp(df, scale= TRUE))

#who.pca = as.data.frame(who.pca)

#fviz_eig(who.pca)

str(summary(who.pca))


summary(who.pca)

df2 = summary(who.pca)$importance

class(df2)

write.csv(df2,"who_PCA.csv")

# fviz_pca_ind(who.pca,
#              col.ind = "cos2", # Color by the quality of representation
#              gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"))
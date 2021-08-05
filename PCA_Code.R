install.packages('factoextra')
library(factoextra)
library(tidyverse)

df = read.csv('WHO Data for PCA.csv')

#str(df)

#str(df2$Location)

df2 <- df %>% 
  unite("Location", c(Location)) %>%
  column_to_rownames("Location")
head(df2)

#df %>% remove_rownames %>% column_to_rownames(var='X')
str(df$X)

df$Location = as.numeric(as.factor(df$Location))

who.pca <- as.data.frame(prcomp(df, scale= TRUE)$x)

glimpse(who.pca)

who.pca

who.pca <- (prcomp(df2, scale= TRUE))

names(who.pca)

summary(who.pca)

who.pca$x

#who.pca = as.data.frame(who.pca)

#fviz_eig(who.pca)

str(summary(who.pca))


summary(who.pca)

df2 = summary(who.pca)$importance

class(df2)

write.csv(who.pca$x,"who_PCA.csv")

# fviz_pca_ind(who.pca,
#              col.ind = "cos2", # Color by the quality of representation
#              gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"))
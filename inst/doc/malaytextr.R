## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(malaytextr)

## -----------------------------------------------------------------------------

head(malayrootwords)


## -----------------------------------------------------------------------------

stem_malay(word = "banyaknya", dictionary = malayrootwords)


## -----------------------------------------------------------------------------

x <- data.frame(text = c("banyaknya","sangat","terkedu", "pengetahuan"))

stem_malay(word = x, 
          dictionary = malayrootwords, 
          col_feature1 = "text")



## -----------------------------------------------------------------------------

x <- c("test https://t.co/fkQC2dXwnc", "another one https://www.google.com/ to try")

remove_url(x)



## -----------------------------------------------------------------------------

head(malaystopwords)



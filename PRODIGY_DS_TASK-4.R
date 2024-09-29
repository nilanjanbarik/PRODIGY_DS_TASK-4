# Prodigy_DS_Task-4

# Visual sentiment pattern analysis in social media.

# We first load the dataset and clean it.

data4<-read.csv("E:\\EDUCATION\\Prodigy Infotech Internship\\twitter_training.csv",header = TRUE)
data4<-na.omit(data4)
head(data4)

# We use the following packages for analysis.

install.packages("wordcloud")
library(RColorBrewer)
library(wordcloud)
library(stringr)
library(ggplot2)
install.packages("syuzhet")
library(syuzhet)
library(tidyverse)


?wordcloud

?iconv

# 

statement<-iconv(data4$im.getting.on.borderlands.and.i.will.murder.you.all..)
attitude<-iconv(data4$Positive)
head(attitude)

?brewer.pal

# Visualize the most common word.

install.packages("tm")
library(tm)

wordcloud(statement, colors = brewer.pal(50, "Spectral"), min.freq = 20)
wordcloud(attitude, colors = brewer.pal(6, "Spectral"), min.freq = 20)

# List of most use words.

sent<-get_nrc_sentiment(statement)
sent

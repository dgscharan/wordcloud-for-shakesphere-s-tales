library(tm)
library(wordcloud)

shake <- Corpus(DirSource("D:\\temp/"))




shake <-tm_map(shake , stripWhitespace)
shake <- tm_map(shake ,tolower)
shake <- tm_map(shake,removeWords,stopwords("english"))
shake <- tm_map(shake , stemDocument)
shake <- tm_map(shake, PlainTextDocument)
wordcloud(shake, scale=c(2,.65), max.words = 400,
          random.order = TRUE , rot.per = 0.11,
          use.r.layout = TRUE , colors=brewer.pal(7,"Dark2"))


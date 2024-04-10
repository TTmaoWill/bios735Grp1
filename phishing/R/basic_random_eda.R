df <- read.csv("source_data/web-page-phishing.csv")
z <- rep(NA, ncol(df))
for (i in 1:ncol(df)){
    z[i] <- sum(df[,i] == 0)/nrow(df)
}

sum(is.na(df))
str(df)
summary(df)

z
colnames(df)
unique(df$phishing)
sum(rowSums(df[3:19] == 0) == ncol(df)-3)
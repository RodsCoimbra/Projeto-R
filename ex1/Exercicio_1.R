library(ggplot2)
library(xlsx)
residuos <- read.xlsx("ResiduosPerCapita.xlsx", sheetName = "Quadro")
Paises <- c(residuos[18,1], residuos[25,1], residuos[35,1])
Quantidade <- as.double(c(residuos[18,2], residuos[25,2], residuos[35,2], residuos[18,3], residuos[25,3], residuos[35,3]))
Anos <- rep(c("2004","2018"),times=c(3,3))
df1 <- data.frame(Paises,Anos, Quantidade)
ggplot(data = df1, aes(x=Paises, y= Quantidade, fill=Anos)) +  geom_bar(stat='identity',position = 'dodge')




# library(ggplot2)
# library(rJava)
# library(xlsx)
# library(reshape2)
# residuos <- read.xlsx("ResiduosPerCapita.xlsx", sheetName = "Quadro")
# Paises <- c(residuos[18,1], residuos[25,1], residuos[35,1])
# Ano_2004 <- as.double(c(residuos[18,2], residuos[25,2], residuos[35,2]))
# Ano_2018 <- as.double(c(residuos[18,3], residuos[25,3], residuos[35,3]))
# df1 <- data.frame(Paises,Ano_2004,Ano_2018)
# df2 <- melt(df1, id.vars='Paises')
# ggplot(data = df2, aes(x=Paises, y=value, fill=variable)) +  geom_bar(stat='identity',position = 'dodge')+ labs(y = "Residuos", fill = "Anos")
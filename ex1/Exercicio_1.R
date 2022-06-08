library(ggplot2)
library(xlsx)
library(reshape2)
residuos <- read.xlsx("ResiduosPerCapita.xlsx", sheetName = "Quadro")
nome <- c(residuos[18,1], residuos[25,1], residuos[35,1])
Ano_2004 <- as.double(c(residuos[18,2], residuos[25,2], residuos[35,2]))
Ano_2018 <- as.double(c(residuos[18,3], residuos[25,3], residuos[35,3]))
df1 <- data.frame(nome,Ano_2004,Ano_2018)
df2 <- melt(df1, id.vars='nome')
Anos <- c('2004','2018')
ggplot(data = df2, aes(x=nome, y=value, fill=variable)) +  
geom_bar(stat='identity',position = 'dodge') + 
labs(title = "Produção de resíduos per capita", x = "Países",y = "Residuos", fill = "Anos") +
scale_fill_manual(labels=Anos, values=c('chocolate1','deepskyblue3'))



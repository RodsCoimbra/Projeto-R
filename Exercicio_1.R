library(ggplot2)
library(rJava)
library(xlsx)
excel <- read.xlsx("ResiduosPerCapita.xlsx", sheetIndex = 1)  
Anos <- rep(c("2004","2018"),times=c(3,3))        #repetir 3 vezes a string "2014" e depois 3 vezes "2018"
Paises <- c(excel[18,1], excel[25,1], excel[35,1])  #Buscar nomes dos países
Quantidade <- as.double(c(excel[18,2], excel[25,2], excel[35,2], excel[18,3], excel[25,3], excel[35,3]))  #Buscar dados das quantidades gastas dos países
df <- data.frame(Paises,Anos, Quantidade)     #Criar um dataframe com todos os dados
ggplot(data = df, aes(x=Paises, y= Quantidade, fill=Anos)) +  geom_bar(stat='identity',position.dodge = ()) #Cria gráfico




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

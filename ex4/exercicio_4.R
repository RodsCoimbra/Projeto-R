library(ggplot2)
library(xlsx)
Utentes <- read.xlsx("Utentes.xlsx", sheetIndex = 1)
plot(Utentes$Idade, Utentes$Colesterol, pch=20,  col = "chartreuse3",
xlab = "Idade", ylab = "Colesterol", main = "Gráfico de dispersão entre a Idade e o Colesterol")  +
grid(col = "darkgrey") +
abline(lm(Utentes$Colesterol~Utentes$Idade), col="deepskyblue2")

library(ggplot2)
library(xlsx)
ficheiro <- read.xlsx("EsperancaVida.xlsx", sheetIndex = 1)
Homens <- ficheiro[51:68,c(43,51,57)]
Mulheres <- ficheiro[51:68,c(77,85,91)]
Anos <- c(2002:2019)
df1 <- data.frame(Homens, Anos)
df2 <- data.frame(Mulheres, Anos)
ggplot() + geom_line(data=df1, aes(x=Anos, stat(y=Homens[,1]), col="CY - Chipre (H)"), lty = 2) + 
geom_line(data=df1, aes(x=Anos,stat(y=Homens[,2]), col="FR - Franca (H)"), lty = 2) +
geom_line(data=df1, aes(x=Anos, stat(y=Homens[,3]), col="LT - Lituania (H)"), lty = 2) +
geom_line(data=df2, aes(x=Anos, stat(y=Mulheres[,1]), col="CY - Chipre (M)")) +
geom_line(data=df2, aes(x=Anos, stat(y=Mulheres[,2]), col="FR - Franca (M)")) +
geom_line(data=df2, aes(x=Anos, stat(y=Mulheres[,3]), col="LT - Lituania (M)")) +
scale_y_discrete(breaks = seq(60, 90)) +
ylab("Esperanca de vida(em anos)")
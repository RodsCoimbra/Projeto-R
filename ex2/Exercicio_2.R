library(ggplot2)
library(xlsx)
ficheiro <- read.xlsx("EsperancaVida.xlsx", sheetIndex = 1)
Homens <- ficheiro[51:68,c(43,51,57)]
Mulheres <- ficheiro[51:68,c(77,85,91)]
Anos <- c(2002:2019)
df1 <- data.frame(Homens, Anos)
df2 <- data.frame(Mulheres, Anos)
ggplot() + geom_line(data=df1, aes(x=Anos, stat(y=Homens[,1]), col="CY - Chipre (H)"), lty = 2) + 
geom_line(data=df1, aes(x=Anos,stat(y=Homens[,2]), col="FR - França (H)"), lty = 2) +
geom_line(data=df1, aes(x=Anos, stat(y=Homens[,3]), col="LT - Lituânia (H)"), lty = 2) +
geom_line(data=df2, aes(x=Anos, stat(y=Mulheres[,1]), col="CY - Chipre (M)")) +
geom_line(data=df2, aes(x=Anos, stat(y=Mulheres[,2]), col="FR - França (M)")) +
geom_line(data=df2, aes(x=Anos, stat(y=Mulheres[,3]), col="LT - Lituânia (M)")) +
scale_y_discrete(breaks = seq(60, 90)) + scale_x_continuous(breaks = seq(2002, 2019)) +
labs(title = "Esperança de vida à nascença", y = "Esperanca de vida (em anos)", col = "Paises\nLinha - Mulher\nTracejado - Homem")




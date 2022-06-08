library(ggplot2)
library(xlsx)
Ar <- read.xlsx("QualidadeARO3.xlsx", sheetName = "Sheet1")
Entrecampos <- as.double(Ar$Entrecampos)
Paio.Pires <- as.double(Ar$Paio.Pires)
df1 <- data.frame(Entrecampos,Paio.Pires)
ggplot() +
geom_histogram(data = df1, aes(x=Entrecampos, fill= "Entrecampos"), binwidth = 1, colour="black", alpha = 0.8) +
geom_histogram(data = df1, aes(x=Paio.Pires, fill= "Paio Pires"), binwidth = 1,  colour ="black", alpha = 0.6) +
scale_x_continuous(breaks=seq(0,200, by = 10)) +
labs(x = "Níveis de ozono (μg/m³)", y = "Quantidade", fill = "Locais")


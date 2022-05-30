library(ggplot2)
library(xlsx)
Ar <- read.xlsx("QualidadeARO3.xlsx", sheetName = "Sheet1")
Entrecampos <- as.double(Ar$Entrecampos)
Paio.Pires <- as.double(Ar$Paio.Pires)
df1 <- data.frame(Entrecampos,Paio.Pires)
ggplot() +
geom_histogram(data = df1, aes(x=Entrecampos, fill= "Entrecampos"), binwidth = 1, colour="black", alpha = 0.7) + 
geom_histogram(data = df1, aes(x=Paio.Pires, fill= "Paio Pires"), binwidth = 1,  colour ="black", alpha = 0.7) + 
xlab("Níveis de ozono (μg/m³)") +
ylab("Quantidade") + 
labs(fill = "Locais")
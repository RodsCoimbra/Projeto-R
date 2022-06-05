library(ggplot2)
seed = 168
amostras = 1190
n = 82
set.seed(seed)
Valores_rand <- 1:amostras
Valor= seq(14,18, by= 4/(amostras-1))
for (i in 1:amostras){
Valores_rand[i] = mean(runif(n, min = 14, max = 18))
}
Var = ((18-14)^2)/12
desvio <- sqrt((Var/n))
distri <- dnorm(Valor, mean = 16, sd = desvio)
data <-data.frame(Valores_rand)
ggplot() + geom_histogram(data = data, aes(x = Valores_rand , y = after_stat(density)), col="Black", fill = "DarkGreen", bins = 75) +
geom_line(data = data, aes(x=Valor ,stat(y=distri)), size = 1.5) + xlab("Valores") + ylab("Freq. relativa")




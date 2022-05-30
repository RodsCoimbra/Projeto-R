library(ggplot2)
seed = 168
amostras = 1190
n = 2
set.seed(seed)
Valores_rand <- 1:amostras
Valor= seq(14,18, by= 4/(amostras-1))
for (i in 1:amostras){
Valores_rand[i] = mean(runif(n, min = 14, max = 18))
}
Var = ((18-14)^2)/12
desvio <- sqrt((Var/2))
distri <- dnorm(Valor, mean = 16, sd = desvio)
# a = hist(Valores_rand, xlab = 'x', main = 'Histograma', ylab = 'Frequência', breaks = 30)
# a$density = a$counts/sum(a$counts)
# plot(a, freq = FALSE)
# par(new=TRUE)
# plot(Valor,distri)
data <-data.frame(Valores_rand)
ggplot() + geom_histogram(data = data, aes(x=Valores_rand), col="Black", fill = "DarkGreen", bins = 50) +
geom_point(data = data, x=Valor ,y=distri*100) +   xlim(14, 18)



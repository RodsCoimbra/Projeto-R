library(ggplot2)
set.seed(744)
m = 1350
n = seq(100,5000, by = 100)
lambda = 0.61
gama = 0.95
Media = 0
X <- matrix(0, nrow = 50, ncol = m)
for (i in 1:50){
for (j in 1:m){
  X[i,j] <- mean(rexp(n,lambda))
}}
b =  qnorm(1-(1-gama)/2)
amp = (2*b)/(X*sqrt(n))
for (i in 1:50){
Media[i] = mean(amp[i, 1:m])
}
df <- data.frame(Media)
ggplot() + geom_line(data = df, aes(x = n, y = Media), size = 1) + 
labs(x = "Dimensão da amostra", y = "Média das amplitudes", 
title = "Média da Amplitude dos 1350 intervalos de confiança obtidos em função de n") +
scale_x_continuous(breaks=seq(200,5000, by = 200)) +
scale_y_continuous(breaks=seq(0.050,0.25, by = 0.025))
  
  
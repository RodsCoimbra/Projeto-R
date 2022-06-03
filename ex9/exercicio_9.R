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
b =  qnorm((1+gama)/2)
amplitude = (2*b)/(X*sqrt(n))
for (i in 1:50){
Media[i] = mean(amplitude[i, 1:m])
}
df <- data.frame(Media)
ggplot() + geom_line(data = df, aes(x = n, y = Media), size = 1) + 
xlab("Dimensão da amostra") + ylab("Média das amplitudes")
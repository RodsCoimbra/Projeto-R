library(ggplot2)
set.seed(291)
m = 1050
n = seq(100,2500, by = 100)
lambda1 = 3.15
lambda2 = 0.11
gama = 0.99
Media1 = 0
Media2 = 0
Cont = 0.1
X <- matrix(0, nrow = 25, ncol = m)
Xc <- matrix(0, nrow = 25, ncol = m)
for (i in 1:25){
  for (j in 1:m){
    X[i,j] <- mean(rexp(n,lambda1))
    Xc[i,j]<- mean(rexp(n,lambda2))
    Xc[i,j] = X[i,j]*(1-Cont) + Xc[i,j]*Cont
}}
b =  qnorm((1+gama)/2)
amplitude1 = (2*b)/(X*sqrt(n))
amplitude2 = (2*b)/(Xc*sqrt(n))
for (i in 1:25){
  Media1[i] = mean(amplitude1[i, 1:m])
  Media2[i] = mean(amplitude2[i, 1:m])
}
nomes <- c(Med = "Sem contaminação", Medc = "Com contaminação")
df <- data.frame(Media1)
ggplot() + geom_line(data = df, aes(x = n, y = Media1, col=nomes[1]), size = 1) + 
xlab("Dimensão da amostra") + ylab("Média das amplitudes") +
geom_line(data = df, aes(x = n, y = Media2, col=nomes[2]), size = 1) + labs(col = "Tipo de dados")


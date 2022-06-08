set.seed(750)
m = 1100
n = 1327
lambda = 1.5
x = 0
for (i in 1:m){
  x[i] = mean(rexp(n,lambda))
}
gama = 0.91
b = qnorm(1-(1-gama)/2)  #(1-gama)/2 e depois valor tabela
amp = (2*b)/(x*sqrt(n))
res = mean(amp)
sprintf("%.6f", res)
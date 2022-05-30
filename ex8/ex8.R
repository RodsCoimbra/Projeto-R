set.seed(750)
m = 1100
n = 1327
lambda = 1.5
x = 0
dp = 1/(lambda)^2
for (i in 1:m){
  x[i] = mean(rexp(n,lambda))
}
gama = 0.91
b = 1.6954  #(1-gama)/2 e depois valor tabela
amplitude = (2*b)/(x*sqrt(n))
result = mean(amplitude)
result
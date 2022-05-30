seed = 1565
lambda = 0.32
N = 661
set.seed(seed)

v_amostra<-rexp(N, lambda)
va_ord<-sort(v_amostra)
for(i in 1:N){
  if(va_ord[i]>1){
    n=i-1;
    break
  }
}
nf = N - n
valor_emp <- nf/N
valor_teo = 1 - pexp(1, lambda)
dif <- abs(valor_teo - valor_emp)
print(dif)

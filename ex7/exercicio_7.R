seed = 1967
n = 34
m = 860
set.seed(seed)
bin = 0;
for(i in 1:m){
 bin[i] = mean(rbinom(n,18,0.56))
}
media = mean(bin)
E = 18*0.56
res = abs(media-E)
sprintf("%.6f",res)
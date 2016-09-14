#DEFF
#VARIANCE OF Z with the complex design/
#VARIANCE OF Z with the simple design
#From Gelman: des.eff.cell=1 + var(weight/mean(weight))
#From Randy: des.eff.cell=n*sum(weight^2)/(sum(weight))^2
set.seed(1)
data=rbeta(1000,5,5)*1000
stratum=rep(1:10,100)
sizes=unname(unlist(table(stratum)))

r=length(data)*sum(data^2)/(sum(data))^2

g=unlist(lapply(1:10,function(sname){
  weight=data[stratum==sname]
  n=length(wi)
  deff=1 + var(weight/mean(weight))
}))
g=weighted.mean(g,sizes)

gmod=unlist(lapply(1:10,function(sname){
  weight=data[stratum==sname]
  n=length(wi)
  deff=1 + var(weight/mean(data))
}))
gmod=weighted.mean(gmod,sizes)

gall=1 + var(data/mean(data))

r
g
gmod
gall

#N EFF
#N/DEFF
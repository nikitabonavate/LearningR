mean(x)
sum(c(1,2))

traceback()

lm(y ~ x)
traceback()

debug(lm)
lm(y ~ x)

options(error= recover)



### R profiling 

System.time(sd(12))

rprof()
summaryRprof()

## by.total and by.self

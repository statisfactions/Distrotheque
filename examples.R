## Set event parameters 
paramlist <- list(start = list(0, len),
dur = list(0.1, 1.5),
amp = list(0.001, 0.01),
freq = list(50, 10000),
mult = list(0.5, 10),
mindex = list(0, 10),
pan = list(0, 1))

## Values to create sine wave function table in csound
f <- c(1, 0, 2048, 10, 1)

set.seed(100)
ilist <- list(rscore(150, paramlist, funcname = "rnorm"))
outfile <- "rnorm100.wav"
createPerformance(i = ilist, f, "FM_basic.orc", out = outfile)

set.seed(101)
ilist <- list(rscore(150, paramlist, funcname = "rnorm"))
outfile <- "rnorm101.wav"
createPerformance(i = ilist, f, "FM_basic.orc", out = outfile)

set.seed(102)
ilist <- list(rscore(150, paramlist, funcname = "runif"))
outfile <- "runif102.wav"
createPerformance(i = ilist, f, "FM_basic.orc", out = outfile)

set.seed(103)
ilist <- list(rscore(150, paramlist, funcname = "rlogis"))
outfile <- "rlogis103.wav"
createPerformance(i = ilist, f, "FM_basic.orc", out = outfile)


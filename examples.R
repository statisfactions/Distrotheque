## Set event parameters
source("Distrotheque/functions.R")
toneParams <- list(start = list(0, 10),
                   dur = list(0.01, 0.5),
                   amp = list(0.1, 0.2),
                   pan = list(0, 1),
                   attkp = list(0, 0.5),
                   decayp = list(0, 0.5),
                   cps = list(50, 20000),
                   mod = list(0.1, 5),
                   indx = list(0, 10))
drumParams <- list(start = list(0, 10),
                   dur = list(0.1, 0.15),
                   amp = list(0.0005, 0.0008),
                   pan = list(0, 1),
                   attkp = list(0.01, 0.05),
                   decayp = list(0.1, 0.15),
                   cntr = list(30, 400),
                   bw = list(10, 20))
                   
set.seed(65)
ilist <- list(rscore(250, toneParams, funcname = "rnorm", instr = 1),
              rscore(1000, drumParams, funcname = "runif", instr = 2))
outfile <- "normtones.wav"
createPerformance(ilist, out = outfile)

set.seed(100)
ilist <- list(rscore(250, toneParams, funcname = "runif", instr = 1),
              rscore(1000, drumParams, funcname = "rnorm", instr = 2))
outfile <- "normnoises.wav"
createPerformance(ilist, out = outfile)

sr = 20000
kr = 2000
nchnls = 2
0dbfs = 1


instr 1;

  ilen    = p3
  iamp    = p4

  icps    = p5
  icar    = 1
  imod    = p6
  indx    = p7
  ipan	  = p8

  kenv     linseg 0, 0.02, 1,ilen-0.02, 0

  asig     foscili iamp*kenv, icps, icar, imod, indx, 1
  
  outs   asig*ipan, asig*(1-ipan)

endin

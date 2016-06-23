
xelab xil_defaultlib.apatb_doHist_top -prj doHist.prj --lib "ieee_proposed=./ieee_proposed" -s doHist 
xsim --noieeewarnings doHist -tclbatch doHist.tcl


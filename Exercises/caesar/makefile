GHDL=ghdl
GHDLFLAGS= --ieee=synopsys
GHDLRUNFLAGS= --vcd=piiri2.vcd

# Default target : elaborate
all : elab

# Elaborate target.  Almost useless
elab : force
	$(GHDL) -c $(GHDLFLAGS) -e caesar_tb

# Run target
run : force
	$(GHDL) -c $(GHDLFLAGS) -r caesar_tb $(GHDLRUNFLAGS)

# Targets to analyze libraries
init: force
	$(GHDL) -a $(GHDLFLAGS) caesar.vhdl
	$(GHDL) -a $(GHDLFLAGS) caesar_tb.vhdl

force:

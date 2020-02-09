GHDL=ghdl
GHDLFLAGS= --ieee=synopsys
GHDLRUNFLAGS= --vcd=piiri1.vcd

# Default target : elaborate
all : elab

# Elaborate target.  Almost useless
elab : force
	$(GHDL) -c $(GHDLFLAGS) -e piiri1_tb

# Run target
run : force
	$(GHDL) -c $(GHDLFLAGS) -r piiri1_tb $(GHDLRUNFLAGS)

# Targets to analyze libraries
init: force
	$(GHDL) -a $(GHDLFLAGS) piiri1.vhd
	$(GHDL) -a $(GHDLFLAGS) piiri1_tb.vhd

force:

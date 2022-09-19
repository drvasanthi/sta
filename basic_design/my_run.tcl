set_num_threads 1
read_celllib -min my_early.lib
read_celllib -max my_late.lib
read_spef blank.spef
read_verilog my_netlist_updated.v
read_timing my_netlist_updated.timing

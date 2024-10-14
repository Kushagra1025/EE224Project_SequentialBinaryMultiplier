transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/DigitalLabExptsHws/Project/DUT.vhdl}
vcom -93 -work work {D:/DigitalLabExptsHws/Project/FSM_Controller.vhd}
vcom -93 -work work {D:/DigitalLabExptsHws/Project/DATAPATH_VHDL.vhd}

vcom -93 -work work {D:/DigitalLabExptsHws/Project/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  multiplier_4bit_tb

add wave *
view structure
view signals
run -all

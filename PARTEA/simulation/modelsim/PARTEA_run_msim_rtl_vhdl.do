transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/fede_/OneDrive/Desktop/TYDD2/PRACTICA/PARTE A/ej_combinacional.vhd}


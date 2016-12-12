set projDir "C:/Users/1001775/Documents/mojo/Kings/work/planAhead"
set projName "Kings"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/1001775/Documents/mojo/Kings/work/verilog/mojo_top_0.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/reset_conditioner_1.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/cpu_2.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_controller_3.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_controller_3.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_controller_3.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_controller_3.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_controller_3.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/statusdecoder_8.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/LCDmodule2_9.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/question_index_chooser_10.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/rising_edge_detector_11.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/rising_edge_detector_11.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/button_conditioner_13.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/button_conditioner_13.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/instRom_15.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/attEffectRom_16.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/counter_17.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_decoder_18.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_decoder2_19.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/counter_17.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_decoder_18.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_decoder2_19.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/counter_17.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_decoder_18.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_decoder2_19.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/counter_17.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_decoder_18.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_decoder2_19.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/counter_17.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_decoder_18.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/latch_decoder2_19.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/hello_world_rom_32.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/pn_gen_33.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/pipeline_34.v" "C:/Users/1001775/Documents/mojo/Kings/work/verilog/pipeline_34.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/1001775/Documents/mojo/Kings/constraint/custom.ucf" "C:/Users/1001775/Documents/mojo/Kings/constraint/lcd_module.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1

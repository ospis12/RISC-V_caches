# TCL File Generated by Component Editor 19.1
# Tue Feb 04 02:42:21 CET 2020
# DO NOT MODIFY


# 
# Instruction_Cache "instruction_cache" v1.0
# Maciej Dudek 2020.02.04.02:42:21
# This module is design to provide instruction caching with ability to answer in 0 cycles
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module Instruction_Cache
# 
set_module_property DESCRIPTION "This module is design to provide instruction caching with ability to answer in 0 cycles"
set_module_property NAME Instruction_Cache
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP Ospis
set_module_property AUTHOR "Maciej Dudek"
set_module_property DISPLAY_NAME instruction_cache
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL instruction_cache
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file instruction_cache.v VERILOG PATH instruction_cache.v TOP_LEVEL_FILE
add_fileset_file get_data_from_lane.v VERILOG PATH get_data_from_lane.v
add_fileset_file get_position_for_new_lane.v VERILOG PATH get_position_for_new_lane.v
add_fileset_file get_tag_index.v VERILOG PATH get_tag_index.v
add_fileset_file instruction_cache_memory.v VERILOG PATH instruction_cache_memory.v
add_fileset_file update_LRU.v VERILOG PATH update_LRU.v
add_fileset_file update_data_lane.v VERILOG PATH update_data_lane.v
add_fileset_file update_tag_lane.v VERILOG PATH update_tag_lane.v
add_fileset_file instruction_cache_block.v VERILOG PATH instruction_cache_block.v


# 
# parameters
# 
add_parameter number_of_sets INTEGER 4
set_parameter_property number_of_sets DEFAULT_VALUE 4
set_parameter_property number_of_sets DISPLAY_NAME number_of_sets
set_parameter_property number_of_sets TYPE INTEGER
set_parameter_property number_of_sets UNITS None
set_parameter_property number_of_sets ALLOWED_RANGES -2147483648:2147483647
set_parameter_property number_of_sets HDL_PARAMETER true
add_parameter bits_for_index INTEGER 6
set_parameter_property bits_for_index DEFAULT_VALUE 6
set_parameter_property bits_for_index DISPLAY_NAME bits_for_index
set_parameter_property bits_for_index TYPE INTEGER
set_parameter_property bits_for_index UNITS None
set_parameter_property bits_for_index ALLOWED_RANGES -2147483648:2147483647
set_parameter_property bits_for_index HDL_PARAMETER true
add_parameter bits_for_offset INTEGER 6
set_parameter_property bits_for_offset DEFAULT_VALUE 6
set_parameter_property bits_for_offset DISPLAY_NAME bits_for_offset
set_parameter_property bits_for_offset TYPE INTEGER
set_parameter_property bits_for_offset UNITS None
set_parameter_property bits_for_offset ALLOWED_RANGES -2147483648:2147483647
set_parameter_property bits_for_offset HDL_PARAMETER true
add_parameter log_of_number_of_sets INTEGER 2
set_parameter_property log_of_number_of_sets DEFAULT_VALUE 2
set_parameter_property log_of_number_of_sets DISPLAY_NAME log_of_number_of_sets
set_parameter_property log_of_number_of_sets TYPE INTEGER
set_parameter_property log_of_number_of_sets UNITS None
set_parameter_property log_of_number_of_sets ALLOWED_RANGES -2147483648:2147483647
set_parameter_property log_of_number_of_sets HDL_PARAMETER true


# 
# display items
# 


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point core
# 
add_interface core avalon end
set_interface_property core addressUnits SYMBOLS
set_interface_property core associatedClock clock
set_interface_property core associatedReset reset
set_interface_property core bitsPerSymbol 8
set_interface_property core burstOnBurstBoundariesOnly false
set_interface_property core burstcountUnits WORDS
set_interface_property core explicitAddressSpan 0
set_interface_property core holdTime 0
set_interface_property core linewrapBursts true
set_interface_property core maximumPendingReadTransactions 1
set_interface_property core maximumPendingWriteTransactions 0
set_interface_property core readLatency 0
set_interface_property core readWaitTime 1
set_interface_property core setupTime 0
set_interface_property core timingUnits Cycles
set_interface_property core writeWaitTime 0
set_interface_property core ENABLED true
set_interface_property core EXPORT_OF ""
set_interface_property core PORT_NAME_MAP ""
set_interface_property core CMSIS_SVD_VARIABLES ""
set_interface_property core SVD_ADDRESS_GROUP ""

add_interface_port core core_waitrequest waitrequest Output 1
add_interface_port core core_read read Input 1
add_interface_port core core_inst_valid readdatavalid Output 1
add_interface_port core core_instruction readdata Output 32
add_interface_port core core_inst_address address Input 32
set_interface_assignment core embeddedsw.configuration.isFlash 0
set_interface_assignment core embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment core embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment core embeddedsw.configuration.isPrintableDevice 0


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clock clk Input 1


# 
# connection point memory
# 
add_interface memory avalon start
set_interface_property memory addressUnits SYMBOLS
set_interface_property memory associatedClock clock
set_interface_property memory associatedReset reset
set_interface_property memory bitsPerSymbol 8
set_interface_property memory burstOnBurstBoundariesOnly false
set_interface_property memory burstcountUnits WORDS
set_interface_property memory doStreamReads false
set_interface_property memory doStreamWrites false
set_interface_property memory holdTime 0
set_interface_property memory linewrapBursts false
set_interface_property memory maximumPendingReadTransactions 0
set_interface_property memory maximumPendingWriteTransactions 0
set_interface_property memory readLatency 0
set_interface_property memory readWaitTime 1
set_interface_property memory setupTime 0
set_interface_property memory timingUnits Cycles
set_interface_property memory writeWaitTime 0
set_interface_property memory ENABLED true
set_interface_property memory EXPORT_OF ""
set_interface_property memory PORT_NAME_MAP ""
set_interface_property memory CMSIS_SVD_VARIABLES ""
set_interface_property memory SVD_ADDRESS_GROUP ""

add_interface_port memory memory_address address Output 32
add_interface_port memory memory_read read Output 1
add_interface_port memory memory_readdata readdata Input 64
add_interface_port memory memory_waitrequest waitrequest Input 1
add_interface_port memory memory_burstcount burstcount Output 4
add_interface_port memory memory_readdatavalid readdatavalid Input 1


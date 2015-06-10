
set_false_path -from [get_cells -hier *up_xfer_toggle*  -filter {primitive_subgroup == flop}] -to [get_cells -hier *d_xfer_state*     -filter {primitive_subgroup == flop}]
set_false_path -from [get_cells -hier *up_xfer_toggle*  -filter {primitive_subgroup == flop}] -to [get_cells -hier *d_xfer_toggle*    -filter {primitive_subgroup == flop}]
set_false_path -from [get_cells -hier *up_count_toggle* -filter {primitive_subgroup == flop}] -to [get_cells -hier *d_count_toggle*   -filter {primitive_subgroup == flop}]
set_false_path -from [get_cells -hier *d_xfer_toggle*   -filter {primitive_subgroup == flop}] -to [get_cells -hier *up_xfer_state*    -filter {primitive_subgroup == flop}]
set_false_path -from [get_cells -hier *d_xfer_toggle*   -filter {primitive_subgroup == flop}] -to [get_cells -hier *up_xfer_toggle*   -filter {primitive_subgroup == flop}]
set_false_path -from [get_cells -hier *d_count_toggle*  -filter {primitive_subgroup == flop}] -to [get_cells -hier *up_count_toggle*  -filter {primitive_subgroup == flop}]
set_false_path -from [get_cells -hier *preset*          -filter {primitive_subgroup == flop}] -to [get_cells -hier *rst*              -filter {primitive_subgroup == flop}]
 
set_max_delay -from [get_cells -hier *up_xfer_data* -filter {primitive_subgroup == flop}] -to [get_cells -hier *d_data_cntrl*   -filter {primitive_subgroup == flop}]   8.0
set_max_delay -from [get_cells -hier *d_xfer_data*  -filter {primitive_subgroup == flop}] -to [get_cells -hier *up_data_status* -filter {primitive_subgroup == flop}]  20.0
set_max_delay -from [get_cells -hier *d_count_hold* -filter {primitive_subgroup == flop}] -to [get_cells -hier *up_d_count*     -filter {primitive_subgroup == flop}]  20.0


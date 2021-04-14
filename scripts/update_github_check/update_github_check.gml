// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_github_check(){
	start_spot=0;
	if ds_map_find_value(async_load, "id") == github_grab_id{
		if ds_map_find_value(async_load, "status") == 0{
			github_grab = ds_map_find_value(async_load, "result")
			if string_count("<p>Current Version =",github_grab)>0{
				start_spot = string_pos("<p>Current Version = ",github_grab) //the test string is 21 long
				if start_spot != 0{
					version_check = string_copy(github_grab,start_spot+21,5)
					
				}
			}
			
       
       }
	}
}
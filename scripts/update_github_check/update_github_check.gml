// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_github_check(){
	start_spot=0;
	if ds_map_find_value(async_load, "id") == grabber.github_grab_id{
		if ds_map_find_value(async_load, "status") == 0{
			grabber.github_grab = ds_map_find_value(async_load, "result")
			if string_count("Version =",grabber.github_grab)>0{
				start_spot = string_pos("Version = ",grabber.github_grab) //the test string is 21 long
				//if start_spot != 0{
					grabber.version_check = string_copy(grabber.github_grab,start_spot+10,5)
					
				//}
			}
			
       
       }
	}
}
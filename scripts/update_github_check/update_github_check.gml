function update_github_check(){
	start_spot=0;
	update_button.is_update= 0;
	if ds_map_find_value(async_load, "id") == update_button.github_grab_id{
		if ds_map_find_value(async_load, "status") == 0{
			update_button.github_grab = ds_map_find_value(async_load, "result")
			if string_count("Version =",update_button.github_grab)>0{
				start_spot = string_pos("Version = ",update_button.github_grab) //the test string is 21 long
				update_button.version_check = string_copy(update_button.github_grab,start_spot+10,5)
				if (update_button.version_check != ""){
					var version_part = 0;
					for (i =1; i<string_length(update_button.version_check);i++){
						if (version_part = 0){
							if (string_char_at(update_button.version_check,i,) != "."){
								update_button.version_check_A = string(update_button.version_check_A) + string_char_at(update_button.version_check,i,)
							}
							else{
								version_part++
								i++
							}
						}
						if (version_part = 1){
							if (string_char_at(update_button.version_check,i,) != "."){
								update_button.version_check_B = string(update_button.version_check_B) + string_char_at(update_button.version_check,i,)
							}
							else{
								version_part++
								i++;
							}
						}
						if (version_part = 2){
							if (string_char_at(update_button.version_check,i,) != "."){
								update_button.version_check_C = string(update_button.version_check_C) + string_char_at(update_button.version_check,i,)
							}
						}
					}
					
					if  (update_button.is_update =0){
						if (real(update_button.version_check_A) != real(grabber.version_current_A)) and (update_button.is_update != -1){
							if ( real(grabber.version_current_A) < real(update_button.version_check_A) ){
								update_button.is_update=1;
							}
							if ( real(grabber.version_current_A) > real(update_button.version_check_A) ){
								update_button.is_update= -1;
							}
						}
						if (real(update_button.version_check_B) != real(grabber.version_current_B)) and (update_button.is_update != -1){
							if ( real(grabber.version_current_B) < real(update_button.version_check_B) ){
								update_button.is_update=1;
							}
							if ( real(grabber.version_current_B) > real(update_button.version_check_B) ){
								update_button.is_update= -1;
							}
						}
						if (real(update_button.version_check_C) != real(grabber.version_current_C)) and (update_button.is_update != -1){
							if ( real(grabber.version_current_C) < real(update_button.version_check_C) ){
								update_button.is_update=1;
							}
							if ( real(grabber.version_current_C) > real(update_button.version_check_C) ){
								update_button.is_update= -1;
							}
						}
					}
				}
			}
		}
	}
alarm[1] = (room_speed*60) * 60;
}
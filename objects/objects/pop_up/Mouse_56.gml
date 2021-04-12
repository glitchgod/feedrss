/// @description CLICK AREAs

//type 0 (url list
//ok
if mouse_x>=24 and mouse_x <= room_width-(room_width/2)-28{
    if (mouse_y >= room_height-(room_height/8)) and (mouse_y <= room_height-(room_height/8)+48) {
        if pop_up_type =0{
            edit_url_ini_list(input_text);
            instance_destroy(self)
			
			//setup active_url_list
			grabber.active_url_list=0;
			 for (q=0;q<array_length_1d(grabber.url_list); q++){
	                if string_length(grabber.url_list[q])>1{
						grabber.active_url_list++;
						}
					}
		    }

		}
	}

//cancel
if mouse_x>=room_width-(room_width/2)+28 and mouse_x <= room_width-28{
    if (mouse_y >= room_height-(room_height/8)) and (mouse_y <= room_height-(room_height/8)+48) {
        if pop_up_type =0{//setup active_url_list
			grabber.active_url_list=0;
			 for (q=0;q<array_length_1d(grabber.url_list); q++){
	                if string_length(grabber.url_list[q])>1{
						grabber.active_url_list++;
						}
			}
        instance_destroy(self)
        }
    }
}


//type 1 (filter words)
//ok
if mouse_x>=24 and mouse_x <= room_width-(room_width/2)-28{
    if (mouse_y >= room_height-(room_height/8)) and (mouse_y <= room_height-(room_height/8)+48) {
        if pop_up_type =1{
            edit_word_filter_list(input_text);
            instance_destroy(self)
        }
    }
}

//cancel
if mouse_x>=room_width-(room_width/2)+28 and mouse_x <= room_width-28{
    if (mouse_y >= room_height-(room_height/8)) and (mouse_y <= room_height-(room_height/8)+48) {
        if pop_up_type =1{
            instance_destroy(self)
        }
    }
}

//type 2 (save destination )
//ok
if mouse_x>=24 and mouse_x <= room_width-(room_width/2)-28{
    if (mouse_y >= room_height-(room_height/8)) and (mouse_y <= room_height-(room_height/8)+48) {
        if pop_up_type =2 and string_length(string(input_text))>2{
			var input_length = string_length(string(input_text));
			if string_char_at(input_text,input_length) != "/"{
				input_text=input_text+"/"
			}
			grabber.save_file_location=string(input_text);
			ini_open(string(working_directory)+"tool_stats.ini")
			ini_write_string("stats","save_file_location",grabber.save_file_location);
			ini_close(); 
        }
		if string_count("resetdirectory",input_text){
			grabber.save_file_location="";
			ini_open(string(working_directory)+"tool_stats.ini")
			ini_write_string("stats","save_file_location","");
			ini_close(); 
			
		}
        instance_destroy(self)
    }
}

//cancel
if mouse_x>=room_width-(room_width/2)+28 and mouse_x <= room_width-28{
    if (mouse_y >= room_height-(room_height/8)) and (mouse_y <= room_height-(room_height/8)+48) {
        if pop_up_type =2{
            instance_destroy(self)
        }
    }
}


//type 3 (Help)
//ok
if mouse_x>=24 and mouse_x <= room_width-(room_width/2)-28{
    if (mouse_y >= room_height-(room_height/8)) and (mouse_y <= room_height-(room_height/8)+48) {
        if pop_up_type =3{
            instance_destroy(self)
        }
    }
}



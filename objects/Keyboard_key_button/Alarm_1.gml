/// @description delay of repeated
if (alarm[0] < 0) and ( clicked_on = true){ 
	clicked_on = 1;
	if special = 0 {
		if instance_exists(line_with_text) =true{
			if (keyboard_spawner.text_shifted ) = 0{
				 keyboard_string  = keyboard_string + string(this_key);
			}
			if (keyboard_spawner.text_shifted ) = 1{
				 keyboard_string  = keyboard_string + string_upper(string(this_key));
			}
		}
	}

	if special = 2 {
		if instance_exists(line_with_text) = true{
		keyboard_string = string_delete(keyboard_string,string_length(keyboard_string),1);
		}
	
	}
	alarm[1] = 4;
	
}
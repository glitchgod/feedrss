/// @description text from keyboard


global.folder_folder=filename_dir("/home/ubuntu/.config/feedrss/"+"tool_stats.ini");

if pop_up_type  !=3 {
	//backspace text input
	if keyboard_check(vk_backspace){
	    input_text=input_text;
	    if string_length(input_text) > 0 {
	       input_text = string_copy(input_text, 1, real(string_length(input_text))-1 );
	       io_clear(); 
	       }
	}//backspace text input
	if keyboard_check(vk_enter){
		io_clear(); 
	    input_text=input_text;
	}

	//normal text input
	if keyboard_check(vk_anykey)=true and keyboard_check(vk_backspace)=false and keyboard_check(vk_shift)=false{
	    input_text=string(input_text)+string(keyboard_lastchar)
	    io_clear(); 
	}

	//Shift normal text input
	if keyboard_check(vk_anykey)=true and keyboard_check(vk_backspace)=false and keyboard_check(vk_shift)=true{
	    input_text=string(input_text)+string_upper(keyboard_lastchar)
	    io_clear(); 
	}


	//text to show
	if string_length(input_text)<=20 {
	   input_text_shown = input_text
	    }
    
	if string_length(input_text)>20 {
	   input_text_shown = string_copy(input_text,(19-string_length(input_text))*-1,string_length(input_text))
	    }

}
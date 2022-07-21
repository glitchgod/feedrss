/// @description load the custom filter options at start

function load_custom_filter_options(){
	grabber.custom_flter_options = "";													//store the options
	var file_to_check = "";																//file being worked on
	new_custom_flter_options [0] = "";													//set up array to hold the new list
	var c_on = 0;																		//where the website tracking is at per c 's
	var temp_holder = "";																//store thestring to be reprocessed
	

	//load word list file
	if file_exists(string(working_directory)+"custom_filter_options.txt") = true{		//checks if the file exists and loads it
		file_to_check = file_text_open_read(string(working_directory)+"custom_filter_options.txt")	//file that is to be opened
	
		for(c_on=0;c_on < 25;c_on++){
			temp_holder = file_text_read_string(file_to_check);							//get what is stored
			file_text_readln(file_to_check);											//next line
			temp_holder = string_digits(temp_holder);
			if (temp_holder != ""){
				new_custom_flter_options[c_on] =real(temp_holder);						//get the number
				grabber.custom_flter_options[c_on] = new_custom_flter_options[c_on];	//assign it to the actual grabber object
				}
			else{
				new_custom_flter_options[c_on] = 0;										//get the number
				grabber.custom_flter_options[c_on] = new_custom_flter_options[c_on];	//assign it to the actual grabber object
				}
		}
		file_text_close(file_to_check);
	}
	while (c_on != 25){																	//catch if their is not a full list of 25
			grabber.custom_flter_options[c_on] = 0;										//assign it to the actual grabber object
			c_on++;
	}



}

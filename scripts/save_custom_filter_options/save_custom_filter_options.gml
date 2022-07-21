/// @description save custom word list
function save_custom_filter_options(){
/// @description save the  file
var c_list_max = 25;																	//setup the storing of how high the c 's go
var file_to_check = "";																	//file being worked on
var c_on = 0;																			//where the word tracking is at per c 's
var custom_filter_length_check = array_length(grabber.custom_flter_options)				//check the filter
var settings_text = ""																	//the text that will written with 


//delete old file 
if file_exists(string(working_directory)+"custom_filter_options.txt") = true{			//checks if the file exists and delete it
	file_delete(string(working_directory)+"custom_filter_options.txt");					//delete the old file
}

//save custom filter file
file_to_check = file_text_open_write(string(working_directory)+"custom_filter_options.txt");	//creates the file to manage
for (c_on = 0; c_on < custom_filter_length_check; c_on++;){								//loop to save the data
	
		switch (c_on){
		case 0:
		settings_text = "Filter out Russian Letters "
		break;
		case 1:
		settings_text = "Filter out Simple Chinese Characters "
		break;
		case 2:
		settings_text = "Filter out common phrases for None English Dub "
		break;
		case 3:
		settings_text = "Filter out common Porn Phrases "
		break;
		case 4:
		settings_text = "Filter out videos that have ten-eighty in title."
		break;
		case 5:
		settings_text = "Filter out videos that have Webrip in title."
		break;
		case 6:
		settings_text = "Filter out videos that have seven-twenty-p in title."
		break;
		case 7:
		settings_text = "Filter out videos that have four-eighty-p in title."
		break;
		case 8:
		settings_text = "Filter out videos that have four-k and eight-k in title."
		break;
		case 9:
		settings_text = "Filter out videos with phrases like HDCAM "
		break;
		case 10:
		settings_text = "(cmd setup) Double check filtering with tor engine."
		break;
		case 11:
		settings_text = "Filter out episodes from titles "
		break;
		case 12:
		settings_text = "Movie age limiter by years "
		break;
		case 13:
		settings_text = "Movie no older than [x] Years "
		break;
		case 14:
		settings_text = "Metacritic min score "
		break;
		case 15:
		settings_text = "No Movie with a score below [x] "
		break;
		case 16:
		settings_text = "Imdb rating min score "
		break;
		case 17:
		settings_text = "No Movie with a score below [x] "
		break;
		case 18:
		settings_text = "Use custom word filters "
		break;
		case 19:
		}
	
	if (is_real(grabber.custom_flter_options[c_on]) = true){							//check if it is a number
		file_text_write_string(file_to_check,string(settings_text) + string(grabber.custom_flter_options[c_on]));	//save the number
		file_text_writeln(file_to_check);
	}
	else{
		file_text_write_string(file_to_check,string(settings_text) + string(grabber.custom_flter_options[c_on]));		//save the number
		file_text_writeln(file_to_check);
	}
}
if (custom_filter_length_check != c_list_max){											//extend the settings with blanks if missing settings
	for (c_on2 = 0; c_on2 != c_list_max - custom_filter_length_check; c_on2++){
	file_text_write_string(file_to_check,real(string("0")));							//save the number
	file_text_writeln(file_to_check);
	}
}
file_text_close(file_to_check);															//close the file

}
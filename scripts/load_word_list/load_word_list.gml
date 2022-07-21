/// @description load the website list on start

function load_word_list(){
	grabber.custom_word_list = "";												//store how big the file keeping the website list is
	var file_to_check = "";																//file being worked on
	new_custom_word_list [0] = "";														//set up array to hold the new word list
	var c_on = 0;																		//where the website tracking is at per c 's
	

//load word list file
if file_exists(string(working_directory)+"custom_word_list.txt") = true{				//checks if the file exists and loads it
	file_to_check = file_text_open_read(string(working_directory)+"custom_word_list.txt")	//file that is to be opened
	while (!file_text_eof(file_to_check))												//begin of loop checking if not at the end of the file
	    {
		new_custom_word_list[c_on] = file_text_read_string(file_to_check);				//get the website number
		file_text_readln(file_to_check);
		c_on++;
		}
	file_text_close(file_to_check);
}

grabber.custom_word_list = new_custom_word_list;										//assign it to the actual grabber object
}

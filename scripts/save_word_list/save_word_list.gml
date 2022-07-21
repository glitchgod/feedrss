/// @description save custom word list
function save_word_list(){
/// @description save the  file
var c_list_max = 0;																		//setup the storing of how high the c 's go
var file_to_check = "";																	//file being worked on
var c_on = 0;																			//where the word tracking is at per c 's

//delete old file 
if file_exists(string(working_directory)+"custom_word_list.txt") = true{				//checks if the file exists and delete it
	file_delete(string(working_directory)+"custom_word_list.txt");						//delete the old file
}

//array size
c_list_max = array_length(filter_shower.edit_list);										//get the size of the array to set the repeat value

//save word list file
file_to_check = file_text_open_write(string(working_directory)+"custom_word_list.txt");	//creates the file to manage
//file_text_write_real(file_to_check,c_list_max)												//save the custom word size
//file_text_writeln(file_to_check);
for (c_on = 0; c_on < c_list_max; c_on++;){												//loop to save the data
	file_text_write_string(file_to_check,string(filter_shower.edit_list[c_on]));		//save the word
	file_text_writeln(file_to_check);
}
file_text_close(file_to_check);															//close the file

grabber.custom_word_list = filter_shower.edit_list;										//assign it to the actual grabber object
}
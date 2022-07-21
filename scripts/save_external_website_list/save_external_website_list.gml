/// @description save  the website list
function save_external_website_list(){
/// @description save the  file
var c_list_max = 0;																		//setup the storing of how high the c 's go
var file_to_check = "";																	//file being worked on
var c_on = 0;																			//where the website tracking is at per c 's

//delete old file 
if file_exists(string(working_directory)+"website_list.txt") = true{					//checks if the file exists and delete it
	file_delete(string(working_directory)+"website_list.txt");
}

//array size
c_list_max = array_length(website_shower.edit_list);									//get the size of the array to set the repeat value

//save url list file
file_to_check = file_text_open_write(string(working_directory)+"website_list.txt");		//creates the file to manage
for (c_on = 0; c_on < c_list_max; c_on++;){												//loop to save the data
	file_text_write_real(file_to_check,c_on)											//save the website number
    file_text_writeln(file_to_check);

//address check
	if (array_length(website_shower.edit_list[c_on])) >= 2{								//if it has an address
		file_text_write_string(file_to_check,string(website_shower.edit_list[c_on,1]));	//save the address
	    file_text_writeln(file_to_check);
	}
	else{
		file_text_write_string(file_to_check,string("New"));							//make the place holder address
	    file_text_writeln(file_to_check);
	}
	
//issue check
	if (array_length(website_shower.edit_list[c_on])) >= 3{								//if it has an issue
		file_text_write_string(file_to_check,string(website_shower.edit_list[c_on,2]));	//save the issue
	    file_text_writeln(file_to_check);
	}
	else{
		file_text_write_string(file_to_check,string("No issue"));						//make the place holder issue
	    file_text_writeln(file_to_check);
	}
	
//time last worked
	if (array_length(website_shower.edit_list[c_on])) >= 4{								//if it has an time last worked
		file_text_write_string(file_to_check,string(website_shower.edit_list[c_on,3]));	//save the time last worked
	    file_text_writeln(file_to_check);
	}
	else{
		file_text_write_string(file_to_check,string("Not Ran yet"));					//make the place holder time last worked
	    file_text_writeln(file_to_check);
	}
	
//tors found count
	if (array_length(website_shower.edit_list[c_on])) >= 5{								//if it has tors found count
		file_text_write_string(file_to_check,string(website_shower.edit_list[c_on,4]));	//save the tors found count
	    file_text_writeln(file_to_check);
	}
	else{
		file_text_write_string(file_to_check,string("0"));								//make the place holder tors found count
	    file_text_writeln(file_to_check);
	}
	
//tors grabbed number
	if (array_length(website_shower.edit_list[c_on])) >= 6{								//if it has tors grabbed number
		file_text_write_string(file_to_check,string(website_shower.edit_list[c_on,5]));	//save the tors grabbed number
	    file_text_writeln(file_to_check);
	}
	else{
		file_text_write_string(file_to_check,string("0"));								//make the place holder tors grabbed number
	    file_text_writeln(file_to_check);
	}
	
//group number
	if (array_length(website_shower.edit_list[c_on])) = 7{								//if it has a group number
		file_text_write_string(file_to_check,string(website_shower.edit_list[c_on,6]));	//save the group number
	    file_text_writeln(file_to_check);
	}
	else{
		file_text_write_string(file_to_check,string("0"));								//make the place holder group number
	    file_text_writeln(file_to_check);
	}
}
file_text_close(file_to_check);															//clost the file

grabber.url_list = website_shower.edit_list;											//assign it to the actual grabber object
}
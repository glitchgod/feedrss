/// @description load the website list
function load_external_website_list(){
grabber.url_list = "";																	//reset the array
var c_list_max = 0;																		//setup the storing of how high the c 's go
var c_list_max_temp = 0;																//store how big the file keeping the website list is
var file_to_check = "";																	//file being worked on
websites_broken_up [0][0] = "";															//set up array to hold info of websites
var c_on = 0;																			//where the website tracking is at per c 's
var issue_found = 0;																	//boolean about issues being found based on c_list_max

//gets how many sets of websites their are
if file_exists(string(working_directory)+"website_list.txt") = true{					//checks if the file exists and loads it
	file_to_check = file_text_open_read(string(working_directory)+"website_list.txt")	//file that is to be opened
		while (!file_text_eof(file_to_check))											//begin of loop checking if not at the end of the file
	    {
	    file_text_readln(file_to_check);												//moves through the file to be counted
		c_list_max_temp++;																//add to count
	    }
	file_text_close(file_to_check);														//close the file
	c_list_max = round(c_list_max_temp /7);												//set the max
	if (frac(c_list_max/7) !=0 ){
		issue_found	= 1;
	}
}


//load url list file
if file_exists(string(working_directory)+"website_list.txt") = true{					//checks if the file exists and loads it
	file_to_check = file_text_open_read(string(working_directory)+"website_list.txt")	//file that is to be opened
	while (!file_text_eof(file_to_check))												//begin of loop checking if not at the end of the file
	    {
		websites_broken_up[c_on,0] = file_text_read_string(file_to_check);				//get the website number
		file_text_readln(file_to_check);
		websites_broken_up[c_on,1] = file_text_read_string(file_to_check);				//get the address
		file_text_readln(file_to_check);
		websites_broken_up[c_on,2] = file_text_read_string(file_to_check);				//get the issue
		file_text_readln(file_to_check);
		websites_broken_up[c_on,3] = file_text_read_string(file_to_check);				//get the time last worked
		file_text_readln(file_to_check);
		websites_broken_up[c_on,4] = file_text_read_string(file_to_check);				//get the tors found
		file_text_readln(file_to_check);
		websites_broken_up[c_on,5] = file_text_read_string(file_to_check);				//get the tors grabbed
		file_text_readln(file_to_check);
		websites_broken_up[c_on,6] = file_text_read_string(file_to_check);				//get the group number
		file_text_readln(file_to_check);
		c_on++;
		}
	file_text_close(file_to_check);
}

	grabber.url_list = websites_broken_up;										//assign it to the actual grabber object
}
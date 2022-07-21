/// @description load the website list on start
load_external_website_list();
edit_list [0] = "";															//hold the links of the websites that will be managed
array_copy(edit_list,0,grabber.url_list,0,array_length(grabber.url_list))	//copy the main array to the editable one

info = "Website List Below:";												//just text saying what it is

website_name = "";															//set up what the name from the website link is
website_name_start = 0;														//set up what the name at where it starts after ://
website_name_end = 0;														//set up what the name stats at with the .
website_list_length = round(array_length(edit_list)/3)						//get teh length of the array and how many pages there are
website_page_on = 0;														//set the page to show
website_number_edit = -1;													//set what number in the array is being changed

details_info = "";															//the details that are on the right side of the screen

if (frac(array_length(edit_list)/3) >0){									//assist the round to round up for the 4th website
	website_list_length ++
}
		
for (z = 0; z < array_length(edit_list); z++){									//loop to find the name if possible
	website_name = "";															//reset
	website_name_start = 0;														//reset
	website_name_end = 0;														//reset
		
	if (array_length(edit_list[z]) = 7){										//if the array has all 6 parts
		website_name_start = string_pos("://", edit_list[z,1]) + 3;				//set the spot of http  ://
		website_name_end = string_pos(".", edit_list[z,1]) + 4;					//set the .com/.net/.org/.edu /etc
		website_name = string_copy( edit_list[z,1],website_name_start,  website_name_end - website_name_start);
		if (website_name = ""){																					//a catch if it cant find the name
			website_name = "[* * * *]"
		}
	info = info + "\n" + string(website_name) + "\n" +string(edit_list[z,1]) + "\n" + "\n" + "\n";
	}
	else{//the file is damaged
		website_name = "MISSING DATA";
		info = info + "\n" + string(website_name) + "\n" +string(website_name) + "\n" + "\n" + "\n";
	}

}
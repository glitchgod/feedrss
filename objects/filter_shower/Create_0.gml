filter_page_on = 0;				//page the current selection is on
filter_page_length = 4;			//how many pages on the categories room
filter_word_page_length = 1;	//how many pages on the word room
filter_word_edit_num = 0;		//what number is being edited in the word array

//set up options
option_1_connected = 0;
option_2_connected = 0;
option_3_connected = 0;
option_4_connected = 0;
option_5_connected = 0;
option_6_connected = 0;
option_7_connected = 0;
option_8_connected = 0;
option_9_connected = 0;
option_10_connected = 0;
option_11_connected = 0;
option_12_connected = 0;
option_13_connected = 0;
option_14_connected = 0;
option_15_connected = 0;
option_16_connected = 0;
option_17_connected = 0;
option_18_connected = 0;
option_19_connected = 0;
option_20_connected = 0;
option_21_connected = 0;
option_22_connected = 0;
option_23_connected = 0;
option_24_connected = 0;
option_25_connected = 0;

//create the custom filter list
if (room_get_name(room) = "filter_room") = true {
	load_custom_filter_options();
	option_1_connected = instance_create_depth(352 , 64, -1,off_on_buttons)		//make the option
	option_1_connected.attached_to = 0;											//set the option number
	option_1_connected.state =  real(grabber.custom_flter_options[0]);				//set the starting state
	option_2_connected = instance_create_depth(352 , 64*2, -1,off_on_buttons)		//make the option
	option_2_connected.attached_to = 1;											//set the option number
	option_2_connected.state =  real(grabber.custom_flter_options[1]);				//set the starting state
	option_3_connected = instance_create_depth(352 , 64*3, -1,off_on_buttons)		//make the option
	option_3_connected.attached_to = 2;											//set the option number
	option_3_connected.state =  real(grabber.custom_flter_options[2]);				//set the starting state
	option_4_connected = instance_create_depth(352 , 64*4, -1,off_on_buttons)		//make the option
	option_4_connected.attached_to = 3;											//set the option number
	option_4_connected.state =  real(grabber.custom_flter_options[3]);				//set the starting state
	option_5_connected = instance_create_depth(864 , 64, -1,off_on_buttons)		//make the option
	option_5_connected.attached_to = 4;											//set the option number
	option_5_connected.state =  real(grabber.custom_flter_options[4]);				//set the starting state
	option_6_connected = instance_create_depth(864 , 64*2, -1,off_on_buttons)		//make the option
	option_6_connected.attached_to = 5;											//set the option number
	option_6_connected.state =  real(grabber.custom_flter_options[5]);				//set the starting state
	option_7_connected = instance_create_depth(864 , 64*3, -1,off_on_buttons)		//make the option
	option_7_connected.attached_to = 6;											//set the option number
	option_7_connected.state =  real(grabber.custom_flter_options[6]);				//set the starting state
	option_8_connected = instance_create_depth(864 , 64*4, -1,off_on_buttons)		//make the option
	option_8_connected.attached_to = 7;											//set the option number
	option_8_connected.state =  real(grabber.custom_flter_options[7]);				//set the starting state
	option_9_connected = instance_create_depth(1376 , 64, -1,off_on_buttons)		//make the option
	option_9_connected.attached_to = 8;											//set the option number
	option_9_connected.state =  real(grabber.custom_flter_options[8]);				//set the starting state
	option_10_connected = instance_create_depth(1376 , 64*2, -1,off_on_buttons)	//make the option
	option_10_connected.attached_to = 9;										//set the option number
	option_10_connected.state =  real(grabber.custom_flter_options[9]);				//set the starting state
	option_11_connected = instance_create_depth(1376 , 64*3, -1,off_on_buttons)	//make the option
	option_11_connected.attached_to = 10;										//set the option number
	option_11_connected.state =  real(grabber.custom_flter_options[10]);				//set the starting state
	option_12_connected = instance_create_depth(1376 , 64*4, -1,off_on_buttons)	//make the option
	option_12_connected.attached_to = 11;										//set the option number
	option_12_connected.state =  real(grabber.custom_flter_options[11]);				//set the starting state
	option_13_connected = instance_create_depth(1888 , 64, -1,off_on_buttons)	//make the option
	option_13_connected.attached_to = 12;										//set the option number
	option_13_connected.state =  real(grabber.custom_flter_options[12]);				//set the starting state
	option_14_connected = instance_create_depth(1880 , 64*2, -1,minus_button_down_filter)	//make the option
	option_14_connected.attached_to = 13;										//set the option number
	option_14_connected.special_number =  real(grabber.custom_flter_options[13]);				//set the starting state
	option_15_connected = instance_create_depth(1888 , 64*3, -1,off_on_buttons)	//make the option
	option_15_connected.attached_to = 14;										//set the option number
	option_15_connected.state =  real(grabber.custom_flter_options[14]);				//set the starting state
	option_16_connected = instance_create_depth(1880 , 64*4, -1,minus_button_down_filter)	//make the option
	option_16_connected.attached_to = 15;										//set the option number
	option_16_connected.special_number =  real(grabber.custom_flter_options[15]);				//set the starting state
	option_17_connected = instance_create_depth(2400 , 64, -1,off_on_buttons)	//make the option
	option_17_connected.attached_to = 16;										//set the option number
	option_17_connected.state =  real(grabber.custom_flter_options[16]);				//set the starting state
	option_18_connected = instance_create_depth(2392 , 64*2, -1,minus_button_down_filter)	//make the option
	option_18_connected.attached_to = 17;										//set the option number
	option_18_connected.special_number =  real(grabber.custom_flter_options[17]);				//set the starting state
	option_19_connected = instance_create_depth(2400 , 64*3, -1,off_on_buttons)	//make the option
	option_19_connected.attached_to = 18;										//set the option number
	option_19_connected.state =  real(grabber.custom_flter_options[18]);				//set the starting state
	option_20_connected = instance_create_depth(2400 , 64*4, -1,off_on_buttons)	//make the option
	option_20_connected.attached_to = 19;										//set the option number
	option_20_connected.state =  grabber.custom_flter_options[19];				//set the starting state
	
	/*
	//future code
	option_21_connected = instance_create_depth(2400 , 64, -1,off_on_buttons)	//make the option
	option_21_connected.attached_to = 20;										//set the option number
	option_21_connected.state =  grabber.custom_flter_options[20];				//set the starting state
	option_22_connected = instance_create_depth(352 , 64*2, -1,off_on_buttons)	//make the option
	option_22_connected.attached_to = 21;										//set the option number
	option_22_connected.state =  grabber.custom_flter_options[21];				//set the starting state
	option_23_connected = instance_create_depth(352 , 64*3, -1,off_on_buttons)	//make the option
	option_23_connected.attached_to = 22;										//set the option number
	option_23_connected.state =  grabber.custom_flter_options[22];				//set the starting state
	option_24_connected = instance_create_depth(352 , 64*4, -1,off_on_buttons)	//make the option
	option_24_connected.attached_to = 23;										//set the option number
	option_24_connected.state =  grabber.custom_flter_options[23];				//set the starting state
	option_25_connected = instance_create_depth(352 , 64, -1,off_on_buttons)	//make the option
	option_25_connected.attached_to = 24;										//set the option number
	option_25_connected.state =  grabber.custom_flter_options[24];				//set the starting state
	*/
}


















//create the word filter list
if (room_get_name(room) = "word_room") = true {
	
	load_word_list();			//update the list of words 
	//edit_list[0] = "";			//set up the array to store words
	edit_list = array_create(0);
	array_copy(edit_list,0,grabber.custom_word_list,0,array_length(grabber.custom_word_list))	//copy the main array to the editable one
	
//double check the array entries for when array copy on first load of program
	if (array_length(edit_list) < 2 ){
		for (c = 0; c < array_length(edit_list); c++){
			if (edit_list[c] = ""){		//if the entry is empty
				array_delete(edit_list,c,1);//delete the entry
				save_word_list();		//save the word_list
			}
		}
	}
	
//create the word object on the screen	
	c_max = array_length(edit_list)	//how many words there are
	//c_max = 31 ;					//test value
	column_on = 0;					//what column to make the objects
	row_on = 0;						//track what row to make the object on
	page_counter = 0;				//keep track of how many pages should be added (15 = filter_word_page_length +1)
	for(c = 0; c < c_max;c++){
		var new_word = instance_create_depth(32 + (column_on * 320) ,32 +(row_on * 64 ),-1 ,custom_word_object);
		row_on++					//add row
		page_counter++				//add to page counter
		new_word.on_page = filter_word_page_length -1	//set the page spawn on
		new_word.spawn_column = column_on				//set the column spawn on
		new_word.text_to_show = string(edit_list[c]);	//set the word on the object made
		if (row_on = 5){			//reset the row number
			column_on++;			//increase column count
			row_on = 0;
		}
		if (page_counter = 15){		//add to possible pages
			filter_word_page_length++;					//add to possible pages
			page_counter = 0		//reset the page
			column_on = 0;			//reset the column
			
		}
		
	}
}

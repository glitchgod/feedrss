// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function load_downloaded_list(){
	history_shower.history_loaded = "";																	//reset the array
	if (file_exists(string(working_directory)+"torrents_downloaded.txt") =true){
		
		var temp_count = 0;																				//how many have been processed
		var temp_place_holder_0 = 0;																	//store a place holder incase nothing was found
		var temp_place_holder_1 = 0;																	//store a place holder incase nothing was found
		var temp_place_holder_2 = 0;																	//store a place holder incase nothing was found
		var temp_place_holder_3 = 0;																	//store a place holder incase nothing was found
		var temp_place_holder_4 = 0;																	//store a place holder incase nothing was found
		var temp_place_holder_5 = 0;																	//store a place holder incase nothing was found
		var temp_place_holder_6 = 0;																	//store a place holder incase nothing was found
		var torrent_file = file_text_open_read(string(working_directory)+"torrents_downloaded.txt");	//open the file to be written
		while (file_text_eof(torrent_file)) = false{													//loop while reading the file
			var temp_string = "";																		//setup the string that will be processed
			
			temp_string = file_text_read_string(torrent_file);											//read the string
			
			if (temp_string = "") or (string_length(temp_string) <= 2){									//string is empty
				file_text_readln(torrent_file);															//skip line
			}
			
			if (temp_string != "") and (string_length(temp_string) > 2){								//string is not empty	
				
				switch(string_char_at(temp_string,1))													//switch based on first input
				{
					case"[":																			//check if it is the name
						history_shower.history_loaded[temp_count,0]=string(temp_string);				//set the name
						file_text_readln(torrent_file);													//skip line
						temp_place_holder_0 = 1;														//tell the system it found one
						
						//reset the values just incase their is a broken set of data
						//this will drop the saved data and thus run the risk of a repulling
						//but would keep the list nice and clean to read
						/////////////////////////////////////////////////////////
						temp_place_holder_1 = 0;
						temp_place_holder_2 = 0;
						temp_place_holder_3 = 0;
						temp_place_holder_4 = 0;
						temp_place_holder_5 = 0;
						temp_place_holder_6 = 0;
						
					break;
						
					case"L":																			//check if it is the line
						history_shower.history_loaded[temp_count,1]=string(temp_string);				//set the name
						file_text_readln(torrent_file);													//skip line				
						temp_place_holder_1 = 1;														//tell the system it found one
					break;	
						
					case"D":																			//check if it is the line
						if (string_char_at(temp_string,2) = "a"){
							history_shower.history_loaded[temp_count,2]=string(temp_string);			//set the name
							file_text_readln(torrent_file);												//skip line				
							temp_place_holder_2 = 1;													//tell the system it found one
						}																				//check if it is the line
						if (string_char_at(temp_string,2) = "o"){
							history_shower.history_loaded[temp_count,5]=string(temp_string);			//set the name
							file_text_readln(torrent_file);												//skip line				
							temp_place_holder_5 = 1;													//tell the system it found one
						}
					break;	
						
					case"C":																			//check if it is the line
						history_shower.history_loaded[temp_count,3]=string(temp_string);				//set the name
						file_text_readln(torrent_file);													//skip line				
						temp_place_holder_3 = 1;														//tell the system it found one
					break;	
						
					case"O":																			//check if it is the line
						history_shower.history_loaded[temp_count,4]=string(temp_string);				//set the name
						file_text_readln(torrent_file);													//skip line				
						temp_place_holder_4 = 1;														//tell the system it found one
					break;	
						
					case"R":																			//check if it is the line
						history_shower.history_loaded[temp_count,6]=string(temp_string);				//set the name
						file_text_readln(torrent_file);													//skip line				
						temp_place_holder_6 = 1;														//tell the system it found one
					break;	
				}
				
				
				//spawn the button
				if (temp_place_holder_0 = 1) && (temp_place_holder_1 = 1) && (temp_place_holder_2 = 1) && (temp_place_holder_3 = 1) && (temp_place_holder_4 = 1) && (temp_place_holder_5 = 1) && (temp_place_holder_6 = 1){
					
					//spawn the buttons
					new_button = instance_create_depth(x,32 + (33 * temp_count) ,0,History_title_button);
					new_button.text_to_draw_0 = string(history_shower.history_loaded[temp_count,0]);	
					new_button.text_to_draw_1 = string(history_shower.history_loaded[temp_count,1]);
					new_button.text_to_draw_2 = string(history_shower.history_loaded[temp_count,2]);
					new_button.text_to_draw_3 = string(history_shower.history_loaded[temp_count,3]);
					new_button.text_to_draw_4 = string(history_shower.history_loaded[temp_count,4]);
					new_button.text_to_draw_5 = string(history_shower.history_loaded[temp_count,5]);
					new_button.text_to_draw_6 = string(history_shower.history_loaded[temp_count,6]);
					new_button.xyz_number = temp_count;
					
					temp_count++;
					temp_place_holder_0 = 0;
					temp_place_holder_1 = 0;
					temp_place_holder_2 = 0;
					temp_place_holder_3 = 0;
					temp_place_holder_4 = 0;
					temp_place_holder_5 = 0;
					temp_place_holder_6 = 0;
				}
			}
		}
		file_text_close(torrent_file)
	}
}
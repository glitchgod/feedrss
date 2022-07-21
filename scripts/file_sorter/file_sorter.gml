function file_sorter(argument0) {
	to_be_sorted=argument0;
	send_back_link[0]="";
	/*This will check the title of entry
	//see if there is file starting with that letter
	//create fill if not already
	//save info to file
	//download if no issue with ignore list
	//
	/////////////////////////////////////////////////*/
	
	grabber_load_downloaded_list()														//load the old list of torrents
	
	var past_torrents_file = file_text_open_append(string(working_directory)+"torrents_downloaded.txt");
	var match_found = 0;																//keep track if a match is found
	var iii = 0;																		//setup the counter
	var link_counter = 0;																//keep track of where in the array to add the links to download
	
	for ( i = 0; i < array_length(to_be_sorted); i++;){
		j=to_be_sorted[i,0];
		k=to_be_sorted[i,1];
		l=to_be_sorted[i,2];
		m=to_be_sorted[i,3];
		nn=to_be_sorted[i,4];
		oo=to_be_sorted[i,5];
		
		match_found = 0;																//reset the value
        
		if (is_array(grabber.loaded_old_torrents) = true){
			for(iii =0;iii <array_length(grabber.loaded_old_torrents); iii++;){
				if (string_count(string_lower(j),string_lower(grabber.loaded_old_torrents[iii,0])) > 0){	//check for a match
					match_found = 1;
					break;
				}
			}
		}
		if (is_array(grabber.loaded_old_torrents) = false){
			grabber.loaded_old_torrents = array_create(1, "");							//setup the array to hold future values
			grabber.loaded_old_torrents[0,0] ="";										//setup the array to hold future values
		}
		if (match_found = 1){															//if there was a match found
			if (grabber.loaded_old_torrents[iii,5] = "Downloaded") or (grabber.loaded_old_torrents[iii,5] = "Download_Status=" + "\"" +string("Downloaded") + "\"" ) {	//already downloaded
					
			}
			else{
				file_text_write_string(past_torrents_file, "[" + string(j) + "]" );
				file_text_writeln(past_torrents_file)
				file_text_write_string(past_torrents_file,"RSS_Feed_Source=" + "\"" +string( grabber.website_on) + "\"" );
				file_text_writeln(past_torrents_file)
				file_text_write_string(past_torrents_file,"Download_Status=" + "\"" +string("Downloaded") + "\"" );
				file_text_writeln(past_torrents_file)
				file_text_write_string(past_torrents_file, "Link=" + "\"" +string(k) + "\"" );
				file_text_writeln(past_torrents_file)
				file_text_write_string(past_torrents_file, "Date_Pulled=" + "\"" +string(l) + "\"" );
				file_text_writeln(past_torrents_file)
				file_text_write_string(past_torrents_file, "Category=" + "\"" + string(m) + "\"" );
				file_text_writeln(past_torrents_file)
				file_text_write_string(past_torrents_file, "Original_Name=" + "\"" +string(nn) + "\"" );
				file_text_writeln(past_torrents_file)
				
				grabber.loaded_old_torrents[array_length(grabber.loaded_old_torrents) + 1, 0] = "[" + string(j) + "]" ;
				grabber.loaded_old_torrents[array_length(grabber.loaded_old_torrents) - 1, 5] = "Downloaded" ;
				//if it is okay to download send back the information
				/*if (oo="Downloaded")=true*/{
			        send_back_link[link_counter,0]=k;
			        send_back_link[link_counter,1]=j;
					link_counter++;
				}
				
				
			}
		}
		
		if (match_found = 0){
				file_text_write_string(past_torrents_file, "[" + string(j) + "]" );
				file_text_writeln(past_torrents_file)
				file_text_write_string(past_torrents_file,"RSS_Feed_Source=" + "\"" +string( grabber.website_on) + "\"" );
				file_text_writeln(past_torrents_file)
				file_text_write_string(past_torrents_file,"Download_Status=" + "\"" +string("Downloaded") + "\"" );
				file_text_writeln(past_torrents_file)
				file_text_write_string(past_torrents_file, "Link=" + "\"" +string(k) + "\"" );
				file_text_writeln(past_torrents_file)
				file_text_write_string(past_torrents_file, "Date_Pulled=" + "\"" +string(l) + "\"" );
				file_text_writeln(past_torrents_file)
				file_text_write_string(past_torrents_file, "Category=" + "\"" + string(m) + "\"" );
				file_text_writeln(past_torrents_file)
				file_text_write_string(past_torrents_file, "Original_Name=" + "\"" +string(nn) + "\"" );
				file_text_writeln(past_torrents_file)
				
				grabber.loaded_old_torrents[array_length(grabber.loaded_old_torrents), 0] = "[" + string(j) + "]" ;
				grabber.loaded_old_torrents[array_length(grabber.loaded_old_torrents) - 1, 5] = "Downloaded" ;
				//if it is okay to download send back the information
				/*if (oo="Downloaded")=true*/{
			        send_back_link[link_counter,0]=k;
			        send_back_link[link_counter,1]=j;
					link_counter++;
				}
		}
	}
	file_text_close(past_torrents_file);
	return send_back_link;
}

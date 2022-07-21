/// @description check if a link is provided
function download_rss_array() {

	if array_length(grabber.links_sorted) >=0{
	    
		for ( z = 0; z < array_length(grabber.links_sorted); z++;){						//loop through all of the data	    
	        if array_length(grabber.links_sorted[z])=2{
				actual_link = -1;														//reset the link per cycle
				if os_type = os_windows{												//save here if windows
					if grabber.save_file_location="" {
						actual_link= http_get_file(grabber.links_sorted[z,0],string(working_directory)+"files\\" + grabber.links_sorted[z,1]+".torrent"); 
						grabber.last_download_amount ++;
					}
					if grabber.save_file_location!="" {
						actual_link= http_get_file(grabber.links_sorted[z,0],grabber.save_file_location+"\\files\\"+grabber.links_sorted[z,1]+".torrent"); 
						grabber.last_download_amount ++;
					}
				}
				if os_type = os_linux{													//save here if linux
					//grabber.save_file_location=""
					if grabber.save_file_location="" {
						actual_link= http_get_file(grabber.links_sorted[z,0],string(working_directory)+string("files/")+string(grabber.links_sorted[z,1])+".torrent"); 
						grabber.last_download_amount ++;
					}
					if grabber.save_file_location!="" {
						//actual_link= http_get_file(grabber.links_sorted[z,0],string("/home/ubuntu/.config/bob/")+"files/"+string(grabber.links_sorted[z,1])+".torrent"); 
						actual_link= http_get_file(grabber.links_sorted[z,0],grabber.save_file_location+"files/"+string(grabber.links_sorted[z,1])+".torrent"); 
							
						grabber.last_download_amount ++;
					}
				}
			 grabber.links_sorted[z] = -1;
				
	         }
	    }
		//clear the array to save memory
	    grabber.links_sorted = -1;
	}
}
function website_parser(){
	
	grabber.website_raw_out = "";														//reset the array of storage
	grabber.links_found = "";															//reset the array
	grabber.links_sorted = "";															//reset the array
	
	
	if is_array(grabber.website_url_id)=true{											//double check for an array
		if (array_length(grabber.website_url_id) > 0){									//double check for an array	
		for (i=0; i < (array_length(grabber.website_url_id)); i++){						//loop through the array
			if ds_map_find_value(async_load, "id") == (grabber.website_url_id[i]){
				if ds_map_find_value(async_load, "status") == 0{
					grabber.website_raw_out[i] = ds_map_find_value(async_load, "result");//assign the full website text to be held
					if (grabber.website_raw_out[i] != "<undefined>"){					//remove broken responces
						grabber.links_found = find_the_link( grabber.website_raw_out[i], "<item>");	//look for the links
						if (array_length(grabber.links_found) > 0){
							grabber.links_sorted = file_sorter(grabber.links_found);	//process the links to be sorted
						
							download_rss_array();										//download
						
						
						}
					}
				}
			}
		}
		}
	}
	
    grabber.alarm[0]=timer_minutes_constant*timer_minutes									//reset the timer
}
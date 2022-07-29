///@description check the websites

grabber.website_url_id =0;													//reset the array
load_external_website_list();												//get the most recent list of sites to check

if (array_length(grabber.url_list)>0){										//check if their are sites
	for (i = 0;i < array_length(grabber.url_list);i++){						//loop through and start procesing all the sites
		if (array_length(grabber.url_list[i]) > 1){							///catch if the array entry is missing portions
			if (string_length(grabber.url_list[i,1]) > 9){					//catch for the text field being empty
				if http_get(grabber.url_list[i,1])>0{
				    grabber.website_url_id[i]=http_get(grabber.url_list[i,1]);
					grabber.website_on = (grabber.url_list[i,1]);
					}
				}
			}
	    }
	}
alarm[0]=timer_minutes_constant*timer_minutes;
/*
global.url_1_response[0]=-1;
if ((grabber.Url_count)>0){ 
	for (d=0;d<array_height_2d(url_list);d++){
		if http_get(url_list[d,0])>0{
			grabber.last_download_amount=0 //reset download count
			grabber.last_parse_amount=0//reset the parse count		
			grabber.currently_downloading=1;
		    global.url_1_response[d,0]=http_get(url_list[d,0]);
			}
	    }
	}
last_updated=date_datetime_string(date_current_datetime());
last_updated=string_delete(last_updated,28,string_length(last_updated)-26);


//update file stats
if file_exists(string(working_directory)+"tool_stats.ini"){
    ini_open(string(working_directory)+"tool_stats.ini");
    ini_write_string("stats","last_update_time",last_updated);
    ini_close(); 

}

grabber.currently_downloading=0
alarm[0]=timer_minutes_constant*timer_minutes;

*/
/// @description process the ping request number
if ds_map_find_value(async_load, "id") == http_request_number {		//check if it the proper id
    if ds_map_find_value(async_load, "status") == 0 {				//if it actual is online
        status_number = ds_map_find_value(async_load, "http_status");//set the number to the variable
		website_shower.details_info =  convert_text(string(http_code_check(status_number)),245,font_medium);
    }	
	else {															//if it actual is offline
        status_number = 9999;										//set it to an invalid number 
		website_shower.details_info =  convert_text(string(http_code_check(status_number)),245,font_medium);
	}
	
	delay_recieve = current_time ;									//time of the data recieved
	delay_time = delay_recieve - delay_start;						//time difference
	
	website_shower.details_info = string_insert( " \n" + "Delay: " + string(delay_time / 1000) + " 'secs", convert_text(string(http_code_check(status_number)),245,font_medium),25);
}

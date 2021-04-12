function http_multi_url(){

for (s=0; s<(array_length_1d(global.url_1_response)-1) ;s++){
	if ds_map_find_value(async_load, "id") == global.url_1_response[s]{
		if ds_map_find_value(async_load, "status") == 0{
		    //updated
		    raw_1_output = ds_map_find_value(async_load, "result");
       
		    //run the scan for the download files
		    array_of_1=find_the_link(raw_1_output,"<item>");
       
		    //if array comes up larger than 0
		    if array_height_2d(array_of_1)>0{
		        //send it to be sorted
		        array_of_2=file_sorter(array_of_1,array_of_issues);
		        //clear the array to save memory
		        array_of_1=0;
            
		        download_rss_array();
				
		        //update file stats
		        if file_exists("/home/ubuntu/.config/feedrss/"+"tool_stats.ini")= false{
		            tool_stats_file = ini_open("/home/ubuntu/.config/feedrss/"+"tool_stats.ini");
		            ini_write_real("stats","last_download_total",grabber.last_downloaded_amount);
		            ini_close(); 
		            }
		        if file_exists("/home/ubuntu/.config/feedrss/"+"tool_stats.ini")= true{
		            tool_stats_file = ini_open("/home/ubuntu/.config/feedrss/"+"tool_stats.ini");
		            ini_write_real("stats","last_download_total",grabber.last_downloaded_amount);
		            ini_close(); 
		            }
		        }
       
		}
		if ds_map_find_value(async_load, "status") < 0{
		    //error in grab
		    raw_1_output = "ERROR";
		    total_errors++
		    }
		if ds_map_find_value(async_load, "http_status") >=400{
		    //error in grab
		    raw_1_output = "ERROR";
		    total_errors++
		    }
	global.url_1_response[s]= -1;
	}
	
}
//download file
if ds_map_find_value(async_load, "id") == actual_link{
    if ds_map_find_value(async_load, "status") == 0{
       
       global.download_link = "";
       actual_link="";
       
       
       
       }
    if ds_map_find_value(async_load, "status") < 0{
       //error in grab
       global.download_link = "ERROR";
       actual_link="";
       total_errors++
       }
    }

scanned_items=-1;
to_be_sorted=-1;
raw_1_output=-1;
current_link=-1;

}
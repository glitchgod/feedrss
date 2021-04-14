/// @description check if a link is provided
function download_rss_array() {

	if array_height_2d(array_of_2) >=0{
	    //loop through all of the data
	    //get entry amount
	    num_of_entries = array_height_2d(array_of_2)

	    for ( z = 0; z < num_of_entries-1; z++;){
	        if array_length_2d(array_of_2,z)=2{
				actual_link=-1; //reset the link per cycle
	            global.download_link=array_of_2[z,0];
				if os_type = os_windows{
					if grabber.save_file_location="" {
					actual_link= http_get_file(global.download_link,"\\files\\"+array_of_2[z,1]+".torrent"); 
					}
					if grabber.save_file_location!="" {
					actual_link= http_get_file(global.download_link,grabber.save_file_location+"\\files\\"+array_of_2[z,1]+".torrent"); 
					}
				}
				if os_type = os_linux{
					//grabber.save_file_location=""
					if grabber.save_file_location="" {
						actual_link= http_get_file(global.download_link,string(working_directory)+string("files/")+string(array_of_2[z,1])+".torrent"); 
					}
					if grabber.save_file_location!="" {
						//actual_link= http_get_file(global.download_link,string("/home/ubuntu/.config/bob/")+"files/"+string(array_of_2[z,1])+".torrent"); 
						actual_link= http_get_file(global.download_link,grabber.save_file_location+"files/"+string(array_of_2[z,1])+".torrent"); 
						var dest=""
						dest = string(grabber.save_file_location+"files/"+string(array_of_2[z,1])+".torrent");
					}
				}
	            array_of_2[z] = -1;
	            }
	        }
		    //clear the array to save memory
	        array_of_2=0;
	}
}
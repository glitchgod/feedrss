/// @description check if a link is provided
function history_force_download() {

	if os_type = os_windows{
		if grabber.save_file_location="" {
			actual_link= http_get_file(history_shower.history_loaded[redownload_history_button.xyz_pass_over,1],string(working_directory)+"files\\" + grabber.links_sorted[z,1]+".torrent"); 
		}
		if grabber.save_file_location!="" {
			actual_link= http_get_file(history_shower.history_loaded[redownload_history_button.xyz_pass_over,1],grabber.save_file_location+"\\files\\"+grabber.links_sorted[z,1]+".torrent"); 
		}
	}
	if os_type = os_linux{
		if grabber.save_file_location="" {
			actual_link= http_get_file(history_shower.history_loaded[redownload_history_button.xyz_pass_over,1],string(working_directory)+string("files/")+string(grabber.links_sorted[z,1])+".torrent"); 
		}
		if grabber.save_file_location!="" {; 
			actual_link= http_get_file(history_shower.history_loaded[redownload_history_button.xyz_pass_over,1],grabber.save_file_location+"files/"+string(grabber.links_sorted[z,1])+".torrent"); 
							
		}
	}
				
}
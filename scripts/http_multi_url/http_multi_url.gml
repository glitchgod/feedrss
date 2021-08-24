function http_multi_url(){
	
	if is_array(global.url_1_response)=true{
//if their is more then website	
		if (array_length_1d(global.url_1_response)>1){	
		grabber.currently_downloading=1;
		
		for (s=0; s<(array_length_1d(global.url_1_response)-1) ;s++){
			if ds_map_find_value(async_load, "id") == (global.url_1_response[s,0]-1){
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
				        if file_exists(string(working_directory)+"tool_stats.ini")= false{
				            var tool_stats_file = ini_open(string(working_directory)+"tool_stats.ini");
				            ini_write_real("stats","last_download_total",grabber.last_download_amount);
				            ini_close(); 
				            }
				        if file_exists(string(working_directory)+"tool_stats.ini")= true{
				            var tool_stats_file = ini_open(string(working_directory)+"tool_stats.ini");
				            ini_write_real("stats","last_download_total",grabber.last_download_amount);
				            ini_close(); 
				            }
				        }
				    //reset error code if there was one in the past
					url_list[s,1]="None";
       
				}
				if ds_map_find_value(async_load, "status") < 0{
				    //error in grab
				    raw_1_output = "ERROR";
					url_list[s,1]="URL ERROR (Possible Dead Link)";
					
					//update url file of an error
					if file_exists(string(working_directory)+"url_list.ini")=true{
					    ini_open(string(working_directory)+"url_list.ini");
					    ini_write_string("Amountofurl",string(s)+string("_issue"),url_list[s,1]);
						ini_close(); 
						}
				
				    total_errors++
				    }
				if ds_map_find_value(async_load, "http_status") >=400{
				    //error in grab
				    raw_1_output = "ERROR";
					url_list[s,1]="WEBSITE REPORTS ERROR, WEBSITE CODE: "+string(ds_map_find_value(async_load, "http_status"));
					
					//update url file of an error
					if file_exists(string(working_directory)+"url_list.ini")=true{
					    ini_open(string(working_directory)+"url_list.ini");
					    ini_write_string("Amountofurl",string(s)+string("_issue"),url_list[s,1]);
						ini_close(); 
						}
				    total_errors++
				    }
			global.url_1_response[s,0]= -1;
			//set grabber.multi_url_pull_at to the proper start point of not null
			if grabber.multi_url_pull_at= -1{
				grabber.multi_url_pull_at=0
			}
			grabber.multi_url_pull_at++//increase progress of where the download is at
			continue;
			}
		}
		//download file call
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
//------------------------------------------------------------------
//
//if their is only 1 website	
//
//------------------------------------------------------------------
		if (array_length_1d(global.url_1_response)=1){
			if (ds_map_find_value(async_load, "id") == (global.url_1_response[0,0]))and (global.url_1_response[0,0] != -1){
				s=0
				if ds_map_find_value(async_load, "status") == 0{
					grabber.last_download_amount=0 //reset download count
					grabber.last_parse_amount=0//reset the parse count
					
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
				        if file_exists(string(working_directory)+"tool_stats.ini")= false{
				            var tool_stats_file = ini_open(string(working_directory)+"tool_stats.ini");
				            ini_write_real("stats","last_download_total",grabber.last_download_amount);
				            ini_close(); 
				            }
				        if file_exists(string(working_directory)+"tool_stats.ini")= true{
				            var tool_stats_file = ini_open(string(working_directory)+"tool_stats.ini");
				            ini_write_real("stats","last_download_total",grabber.last_download_amount);
				            ini_close(); 
				            }
				        }
				    //reset error code if there was one in the past
					url_list[s,1]="None";
       
				}
				if ds_map_find_value(async_load, "status") < 0{
				    //error in grab
				    raw_1_output = "ERROR";
					url_list[s,1]="URL ERROR";
					
					//update url file of an error
					if file_exists(string(working_directory)+"url_list.ini")=true{
					    ini_open(string(working_directory)+"url_list.ini");
					    ini_write_string("Amountofurl",string(s)+string("_issue"),url_list[s,1]);
						ini_close(); 
						}
				
				    total_errors++
				    }
				if ds_map_find_value(async_load, "http_status") >=400{
				    //error in grab
				    raw_1_output = "ERROR";
					url_list[s,1]="WEBSITE REPORTS ERROR, WEBSITE CODE: "+string(ds_map_find_value(async_load, "http_status"));
					
					//update url file of an error
					if file_exists(string(working_directory)+"url_list.ini")=true{
					    ini_open(string(working_directory)+"url_list.ini");
					    ini_write_string("Amountofurl",string(s)+string("_issue"),url_list[s,1]);
						ini_close(); 
						}
				    }
			global.url_1_response[0,0]= -1;
			//set grabber.multi_url_pull_at to the proper start point of not null
			if grabber.multi_url_pull_at= -1{
				grabber.multi_url_pull_at=0
			}
			grabber.multi_url_pull_at++//increase progress of where the download is at
			}
		//download file call
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
	}
	if file_exists(string(working_directory)+"tool_stats.ini")= false{
		var tool_stats_file = ini_open(string(working_directory)+"tool_stats.ini");
		ini_write_real("stats","last_parse_amount",grabber.last_parse_amount);
		ini_close(); 
		}
	if file_exists(string(working_directory)+"tool_stats.ini")= true{
		var tool_stats_file = ini_open(string(working_directory)+"tool_stats.ini");
		ini_write_real("stats","last_parse_amount",grabber.last_parse_amount);
		ini_close(); 
		}
}
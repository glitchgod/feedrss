function file_sorter(argument0, argument1) {
	to_be_sorted=argument0;
	//issues=argument1;
	//work_title="";
	send_back_link[0]="";
	down_check="";
	/*This will check the title of entry
	//see if there is file starting with that letter
	//create fill if not already
	//save info to file
	//download if no issue with ignore list
	//
	/////////////////////////////////////////////////*/
	//reset download count
	grabber.last_found_amount=0;


	//how many entries
	num_of_entries = array_height_2d(to_be_sorted)

	for ( i = 0; i < num_of_entries; i++;)
	    {
		down_check="";
	    if array_length_2d(to_be_sorted,0)>-1{
	        j=to_be_sorted[i,0];
	        k=to_be_sorted[i,1];
	        l=to_be_sorted[i,2];
	        m=to_be_sorted[i,3];
	        nn=to_be_sorted[i,4];
	        oo=to_be_sorted[i,5];
        
	        //grab the first letter of the title
	        //title_first_letter = string_char_at(j, 1);
        
	        //file processing
	        ini_open(string(working_directory)+"torrents_downloaded.ini");
        
	        //see if it already there
	        if ini_section_exists(j){
	        //This means that section is a duplicate so no need to add it
	        }
			
			//process the oo so that it says download if no issue
			if string_length(oo)<=5{
				oo="Downloaded"
			}
//------------------------------------------------------------------
//
//if the file is not already there	
//
//------------------------------------------------------------------
	        if ini_section_exists(j)=false{
	            ini_write_string(j,"RSS_Feed_Source",grabber.url_list[s,0]);
	            ini_write_string(j,"Download_Status",oo);
	            ini_write_string(j,"Original_Name",nn);
	            ini_write_string(j,"Category",m);
	            ini_write_string(j,"Date_Pulled",l);
	            ini_write_string(j,"Link",k);
            
			//if it is okay to download send back the information
				if (oo="Downloaded")=true{
		            send_back_link[i,0]=k;
		            send_back_link[i,1]=j;
		            grabber.last_found_amount++;
				}
	        }
//------------------------------------------------------------------
//
//if the file is already there	but not downloaded
//
//------------------------------------------------------------------
	        if ini_section_exists(j)=true{
				downcheck = ini_read_string(j,"Download_Status","");
				
				if string_count("Downloaded",(downcheck))<1 {
		            ini_write_string(j,"RSS_Feed_Source",grabber.url_list[s,0]);
		            ini_write_string(j,"Download_Status",oo);
		            ini_write_string(j,"Original_Name",nn);
		            ini_write_string(j,"Category",m);
		            ini_write_string(j,"Date_Pulled",l);
		            ini_write_string(j,"Link",k);
				
            
			//if it is okay to download send back the information
					if (oo="Downloaded")=true{
			            send_back_link[i,0]=k;
			            send_back_link[i,1]=j;
			            grabber.last_found_amount++;
					}
				}
	        }
			
	        //close the file
	        ini_close(); 
	        }
	    }
	return send_back_link;
}

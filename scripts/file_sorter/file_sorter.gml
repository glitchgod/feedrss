function file_sorter(argument0, argument1) {
	to_be_sorted=argument0;
	//issues=argument1;
	//work_title="";
	send_back_link[0]="";
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
	    if array_length_2d(to_be_sorted,0)>-1{
	        j=to_be_sorted[i,0];
	        k=to_be_sorted[i,1];
	        l=to_be_sorted[i,2];
	        m=to_be_sorted[i,3];
	        nn=to_be_sorted[i,4];
        
	        //grab the first letter of the title
	        //title_first_letter = string_char_at(j, 1);
        
	        //file processing
	        ini_open(string(working_directory)+"torrents_downloaded.ini");
        
	        //see if it already there
	        if ini_section_exists(j){
	        //in theory this would load the section 
	        //then see if the values of k and l are better
	        }
			
	        //if the file is not already there
	        if ini_section_exists(j)=false{
	            ini_write_string(j,"Source_Website",grabber.url_list[s,0]);
	            ini_write_string(j,"Original_Name",nn);
	            ini_write_string(j,"Category",m);
	            ini_write_string(j,"DatePub",l);
	            ini_write_string(j,"Link",k);
            
	            send_back_link[i,0]=k;
	            send_back_link[i,1]=j;
	            grabber.last_found_amount++;
	        }
	        //close the file
	        ini_close(); 
	        }
	    }
	return send_back_link;
}

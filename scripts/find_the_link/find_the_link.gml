function find_the_link(argument0, argument1) {
	current_link=argument0;
	keyword=argument1; 
	keyword="<item>";//test

	keyword_end=string_insert("/", argument1, 2);
	//page_length=0;
	items_found=-1;

	//foreach section
	start_copy_at=0;
	end_copy_at=0;
	section_found="";
	titleout="";
	linkout="";
	pubDateout="";
	categoryout="";
	scanned_items[0]="";
	current_count=0;
	max_count=100; //the amount of urls allowed to be processed at a time.... maybe allow customization in future.
	start_hash_at=0;
	end_hash_at=0;
	hash_out="";

	//check off to continue
	verify=0;
	global.test_title="";
	global.inside="";

	//look for the actual data
	do {
	    //RESET FOR THE LOOP
        
	    titleout="";
	    linkout="";
	    pubDateout="";
	    categoryout="";
    
	    start_copy_at=string_pos(string(keyword), current_link) ;
	    end_copy_at=string_pos(string(keyword_end), current_link)-start_copy_at ;
	    //cut out this section
	    section_found=string_copy(current_link, start_copy_at, end_copy_at) ;
	    //remove the section
	    current_link=string_replace(current_link, keyword, "<scanned>");
	    current_link=string_replace(current_link, keyword_end, "</scanned>");
    
	    //find the title
	    if string_count( "<title>", section_found )>0{
	        title_start=string_pos(string("<title>"), section_found)+7; 
	        title_end=string_pos(string("</title>"), section_found)-title_start;
	        titleout= string_copy(section_found,title_start,title_end);
	        if string_count( "[", titleout )>0{
	            titleout= string_replace_all(titleout, "[", " ");
	            }
	        if string_count( "]", titleout )>0{
	            titleout= string_replace_all(titleout, "]", " ");
	            }
	        if string_count( ".", titleout )>0{
	            titleout= string_replace_all(titleout, ".", " ");
	            }
	        //run the filter list here
	        global.test_title =  string(string_replace_all(titleout, ")", ""))
	        global.test_title =  string(string_replace_all(global.test_title, "(", ""))
	        verify=0
			
			
			
			
	        for (h=0;h<array_length_1d(grabber.full_ignore_list);h++){
	            global.inside = string(string_lower(grabber.full_ignore_list[h]));
	            //this causes the for loop to jump back to start if verify is not 0
	            if verify !=0{
	                continue;
	                }
	            verify = string_pos(string(global.inside), string(string_lower(global.test_title)));
	            }
			//loop to find the year start then cut off the rest
			for (m=1900;m<current_year+1;m++){
				if string_count( string(m), titleout )>0{
					titleout= string_copy(titleout,1,real(string_pos(string(m),titleout))-2);
					continue;
			    }
				
			}
	    }
	    //no title
	    if string_count( "<title>", section_found )<=0 {
	        titleout=("No Title Found");
	    }
		
		//find the category
	    if string_count( "<category>", section_found )>0 && verify = 0{
	         category_start=string_pos(string("<category>"), section_found)+10; 
	         category_end=string_pos(string("</category>"), section_found)-category_start;
	         categoryout= string_copy(section_found,category_start,category_end);
			if grabber.only_movies = 1 {
				temp_see=0;
				
				//compare the text to categoryout and set to 1 if the category is allowed
				if temp_see =0 {
					temp_see = string_pos(string_lower("movies"), string(string_lower(categoryout)));
				}
				if temp_see =0 {
					temp_see = string_pos(string_lower("movie"), string(string_lower(categoryout)));
				}	
				if temp_see =0 {
					temp_see = string_pos(string_lower("video"), string(string_lower(categoryout)));
				}	
				if temp_see =0 {
					temp_see = string_pos(string_lower("videos"), string(string_lower(categoryout)));
				}	
				if temp_see =0 {
					temp_see = string_pos(string_lower(""), string(string_lower(categoryout)));
				}	
				if temp_see =0 {
					temp_see = string_pos(string_lower(" "), string(string_lower(categoryout)));
				}
				
				if temp_see!=0 {
					verify=0;
				}
				if temp_see=0 {
					verify=1;
				}
			}
	    }
	    //no date category
	    if string_count( "<category>", section_found )<=0{
	        categoryout=("NA");
	    }
	    // category but filtered
	    if string_count( "<category>", section_found )>0 && verify != 0{
	        categoryout=(categoryout + string(" NOT DOWNLOADED DUE TO FILTER SETTINGS"));
	    }
    
	    //find the linkout
	    if string_count( "<link>", section_found )>0 && verify = 0{
	        link_start=string_pos(string("<link>"), section_found)+6; 
	        link_end=string_pos(string("</link>"), section_found)-link_start;
	        linkout= string_copy(section_found,link_start,link_end);
	    }
	    //no linkout
	    if string_count( "<link>", section_found )<=0{
	        linkout= ("No Link Found");
	    }
	    //yes linkout filt says dont add
	    if string_count( "<link>", section_found )>0 && verify != 0{
	        linkout= linkout + string(" NOT DOWNLOADED DUE TO FILTER SETTINGS");
	    }
	    //Filter out magnet links
	    if string_count( "magnet:?xt",string_lower(linkout) )>0 {
			
			if string_count( "dn=",string_lower(linkout) )>0 {
				end_hash_at=real(string_pos(string("dn="), linkout))-27; 
				start_hash_at=real(string_pos(string("dn="), linkout))-45; 
				hash_out= string_copy(linkout,start_hash_at,end_hash_at);
				linkout= string("https://itorrents.org/torrent/" + hash_out + ".torrent");
			}
	        //linkout= string("MAGNET LINKS CAN NOT BE PROCESSED");
			verify = 1;
	    }
    
	    //find the pubDate
	    if string_count( "<pubDate>", section_found )>0{
	         pubDate_start=string_pos(string("<pubDate>"), section_found)+9; 
	         pubDate_end=string_pos(string("</pubDate>"), section_found)-pubDate_start;
	         pubDateout= string_copy(section_found,pubDate_start,pubDate_end);
	        if string_count( "[", titleout )>0{
	            pubDateout= string_replace_all(pubDateout, "[", "(");
	            }
	        if string_count( "]", titleout )>0{
	            pubDateout= string_replace_all(pubDateout, "]", ")");
	            }
	    }
	    //no date found
	    if string_count( "<pubDate>", section_found )<=0{
	        pubDateout=("NA");
	    }
    
	    
	    /*if verify = 0*/{
	        items_found++;
	        }
    
	    //array to add to
	    scanned_items[items_found,0]=titleout;
	    scanned_items[items_found,1]=linkout;
	    scanned_items[items_found,2]=pubDateout;
	    scanned_items[items_found,3]=categoryout;
    current_count++;
	}until ((string_pos(string(keyword), current_link)==0) or (current_count>max_count))
	return scanned_items;
}

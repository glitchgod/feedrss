function find_the_link(argument0, argument1) {
	//This code breaks apart the and seperates each
	//chunck of <items> </items> and then figures 
	//out what if it passes the filters or 
	//is denied
	//
	//
	/////////////////////////////////////////
	current_link=argument0;
	keyword=argument1; 
	keyword="<item>";//test

	keyword_end=string_insert("/", argument1, 2);
	items_found=-1;
	grabber.history_at=-1

	//foreach section
	start_copy_at=0;
	end_copy_at=0;
	section_found="";
	titleout="";
	originaltitleout=""
	linkout="";
	grabDateout="";
	categoryout="";
	categoryissue="";
	scanned_items[0]="";
	current_count=0;
	max_count=125; //the amount of urls allowed to be processed at a time.... maybe allow customization in future.
	start_hash_at=0;
	end_hash_at=0;
	hash_out="";
	start_info_hashed_at=""
	end_info_hashed_at=""
	info_hashed_out=""
	start_enclosure_url=""
	end_enclosure_url=""
	denied_reason=""
	downedout="" //say if their is an error or nothing, if nothing then it downloads

	//check off to continue
	verify=0;
	global.test_title="";
	global.inside="";
	global.inside2="";
	//verify is for filtering
	//0 - no filter aka proceed 
	//1 - filter aka dont download
	
	//look for the actual data
	do {
	    //RESET FOR THE LOOP
        
	    titleout="";
	    linkout="";
	    grabDateout="";
	    categoryout="";
		denied_reason="";
		downedout="";
		categoryissue="";
    
	    start_copy_at=string_pos(string(keyword), current_link) ;
	    end_copy_at=string_pos(string(keyword_end), current_link)-start_copy_at ;
	    //cut out this section
	    section_found=string_copy(current_link, start_copy_at, end_copy_at) ;
	    //remove the section
	    current_link=string_replace(current_link, keyword, "<scanned>");
	    current_link=string_replace(current_link, keyword_end, "</scanned>");

//---------------------------------------------------------------------------------    
//Process the Title
//---------------------------------------------------------------------------------    
    
	    //find the title
	    if string_count( "<title>", section_found )>0{
	        title_start=string_pos(string("<title>"), section_found)+7; 
	        title_end=string_pos(string("</title>"), section_found)-title_start;
	        titleout= string_copy(section_found,title_start,title_end);
			originaltitleout=titleout;

//---------------------------------------------------------------------------------    
//Clean up the title for further processing
//---------------------------------------------------------------------------------    	

	        if string_count( "[", titleout )>0{
	            titleout= string_replace_all(titleout, "[", " ");
	            }
	        if string_count( "]", titleout )>0{
	            titleout= string_replace_all(titleout, "]", " ");
	            }
	        if string_count( ".", titleout )>0{
	            titleout= string_replace_all(titleout, ".", " ");
	            }
	        if string_count( "-", titleout )>0{
	            titleout= string_replace_all(titleout, "-", " ");
	            }
	        if string_count( "|", titleout )>0{
	            titleout= string_replace_all(titleout, "|", " ");
	            }
	        if string_count( ")", titleout )>0{
	            titleout= string_replace_all(titleout, ")", " ");
	            }
	        if string_count( "(", titleout )>0{
	            titleout= string_replace_all(titleout, "(", " ");
	            }
	        if string_count( "  ", titleout )>0{
	            titleout= string_replace_all(titleout, "  ", " ");
	            }
	        if string_count( "【", titleout )>0{
	            titleout= string_replace_all(titleout, "【", " ");
	            }
	        if string_count( "-", titleout )>0{
	            titleout= string_replace_all(titleout, "-", " ");
	            }
				
	        if string_char_at(titleout,1)=" " {
	            titleout= string_copy(titleout,2,string_length(titleout));
	            }
	        if string_char_at(titleout,string_length(titleout)-1)=" " {
	            titleout= string_copy(titleout,1,string_length(titleout)-1);
	            }
			if array_length_1d(grabber.ascii_characters)>1{
			    hh = array_length_1d(grabber.ascii_characters);
			    for (ii=0;ii<hh;ii++){
					if string_count( ii, titleout )>0{
				            titleout= string_replace_all(titleout, ii, " ");
				            }
			        }
			    }    
//---------------------------------------------------------------------------------    
//Process the Title with fitler settings and custom words
//---------------------------------------------------------------------------------    

	        //run the filter list here
			global.test_title = string(titleout)
	        verify=0
			denied_reason=""
			
		    for (h=0;h<array_length_1d(grabber.full_ignore_list);h++){
		        global.inside = string(string_lower(grabber.full_ignore_list[h]));
		        //this causes the for loop to jump back to start if verify is not 0
				
				var test_verify = string_pos(string(string_lower(global.inside)), string(string_lower(global.test_title)));
				if (string_char_at(string_lower(global.test_title),test_verify+string_length(global.inside)+1)=" "){
					verify = string_pos(string(string_lower(global.inside)), string(string_lower(global.test_title)));
					continue;
				}
				
				//second loop to see if their is a repeat verify issue following the first
				else if (string_char_at(string_lower(global.test_title),test_verify+string_length(global.inside)+1)!=" "){
					for (hh=0;hh<array_length_1d(grabber.full_ignore_list);hh++){
					global.inside2 = string(string_lower(grabber.full_ignore_list[hh]));
						if (string_char_at(string_lower(global.test_title),test_verify+string_length(global.inside)+1)=string(string_length(global.inside2))){
						verify = string_pos(string(string_lower(global.inside)), string(string_lower(global.test_title)));
						continue;
						}
				}
				
		        if ((verify !=0) and (string_length(denied_reason)<1)){
						denied_reason=string(string_lower(grabber.full_ignore_list[h]))
						h=array_length_1d(grabber.full_ignore_list)
						continue;
					}
		        }
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
	        titleout=string("No Title Found");
	    }
	    //Broken title
	    if (string_length(titleout)<1){
	        titleout=string("Title Broken");
	    }
//---------------------------------------------------------------------------------    
//Process the Category
//---------------------------------------------------------------------------------    
		
//find the category
	    if string_count( "<category>", section_found )>0 {//&& verify = 0{
	         category_start=string_pos(string("<category>"), section_found)+10; 
	         category_end=string_pos(string("</category>"), section_found)-category_start;
	         categoryout= string_copy(section_found,category_start,category_end);
			 
//remove random things from the category
			if string_count( "<![CDATA", categoryout )>0{
				categoryout=string_replace(categoryout,"<![CDATA","");
			}
			if string_count( "]]>", categoryout )>0{
				categoryout=string_replace(categoryout,"]]>","]");
			}
			
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
				
				if temp_see=0 {
					verify=1;
					categoryout=string(categoryout)+string(" | ")+string("Only Movies Nothing Else")	
					categoryissue=string("Only Movies Nothing Else");
				}
			}
	    }

//no category
	    if string_count( "<category>", section_found )<=0{
	        categoryout=("NA");
	    }
//---------------------------------------------------------------------------------    
//Process the links
//---------------------------------------------------------------------------------    

	    //find the linkout directly
	    if string_count( "<link>", section_found )>0 {//&& verify = 0{
	        link_start=string_pos(string("<link>"), section_found)+6; 
	        link_end=string_pos(string("</link>"), section_found)-link_start;
	        linkout= string_copy(section_found,link_start,link_end);
	    }
		
		//Filter out hash given links
		if string_count( "<info_hash>", section_found )>0 {//&& verify = 0{
	        start_info_hashed_at=string_pos(string("<info_hash>"), section_found)+11; 
	        end_info_hashed_at=string_pos(string("</info_hash>"), section_found)-start_info_hashed_at;
	        info_hashed_out= string_copy(section_found,start_info_hashed_at,end_info_hashed_at);
			linkout= string("https://itorrents.org/torrent/" + info_hashed_out + ".torrent");
			}
		
	    //Filter out direct magnet links
	    if string_count( "magnet:?xt",string_lower(linkout) )>0  {//&& verify = 0{
			
			if string_count( "dn=",string_lower(linkout) )>0 {
				end_hash_at=real(string_pos(string("dn="), linkout))-27; 
				start_hash_at=real(string_pos(string("dn="), linkout))-45; 
				hash_out= string_copy(linkout,start_hash_at,end_hash_at);
				linkout= string("https://itorrents.org/torrent/" + hash_out + ".torrent");
			}
			else {
				linkout= string("Misformed magnet link ");
			}
	    }
		
		//Filter out embeded links
		if string_count( "<enclosure url=", section_found )>0 {//&& verify = 0{
	        start_enclosure_url=string_pos(string("<enclosure url="), section_found)+16; 
	        end_enclosure_url=string_pos(string(".torrent"), section_found)-start_enclosure_url+8;
	        linkout= string_copy(section_found,start_enclosure_url,end_enclosure_url);
			}
		
		
	    //no link Found
	    if  linkout="" {//string_count( "<link>", section_found )<=0 && string_count( "<info_hash>", section_found )<=0{
	        linkout= string("No Link/enclosure url/info_hash Found");
	    }
	    //yes linkout filter says dont add
	    if string_count( "<link>", section_found )>0 && verify != 0{
	        linkout= linkout + string(" : NOT DOWNLOADED DUE TO FILTER SETTINGS")//+ string(" : ")+string(denied_reason);
	    }
//---------------------------------------------------------------------------------    
//Process the grabDate
//---------------------------------------------------------------------------------    

	    
		grabDateout = string(date_datetime_string(date_current_datetime()));

//---------------------------------------------------------------------------------    
//Final Process
//---------------------------------------------------------------------------------    
    
	    
		items_found++;
		grabber.history_at++;
		
		
		if verify!=0{
			downedout= string("NOT DOWNLOADED DUE TO FILTER SETTINGS :")+string(categoryissue)+string(" : ")+string(denied_reason);
		}
	    
    
	    //array to add to
	    scanned_items[items_found,0]=titleout;
	    scanned_items[items_found,1]=linkout;
	    scanned_items[items_found,2]=grabDateout;
	    scanned_items[items_found,3]=categoryout;
	    scanned_items[items_found,4]=originaltitleout;
	    scanned_items[items_found,5]=downedout;
		
		//history to add to
		grabber.history[grabber.history_at,0]=titleout;
		
		//max length is 75in character limits so post process is needed
		if string_length(linkout)>55{
			linkout=string_insert("#",linkout,55)
		}
		grabber.history[grabber.history_at,1]=linkout;
		grabber.history[grabber.history_at,2]="filtered/old,New";
		grabber.history[grabber.history_at,3]=grabber.url_list[s,0];
    current_count++;
	}until ((string_pos(string(keyword), current_link)==0) or (current_count>max_count))
	return scanned_items;
}

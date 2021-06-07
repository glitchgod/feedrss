/// @description setup the full_ignore_list
g = 0
full_ignore_list="";
if russian_on=1{
    h = array_length_1d(russian_letters);
    for (i=0;i<h;i++){
        full_ignore_list[g]=russian_letters[i]
        g++
        }
    }
if china_on=1{
    h = array_length_1d(china_letters);
    for (i=0;i<h;i++){
        full_ignore_list[g]=china_letters[i]
        g++
        }
    }
if japan_on=1{
    h = array_length_1d(Japan_letters);
    for (i=0;i<h;i++){
        full_ignore_list[g]=Japan_letters[i]
        g++
        }
    }
if countries_on=1{
    h = array_length_1d(countries_term);
    for (i=0;i<h;i++){
        full_ignore_list[g]=countries_term[i]
        g++
        }
    }
if porn_on=1{
    h = array_length_1d(porn_terms);
    for (i=0;i<h;i++){
        full_ignore_list[g]=porn_terms[i]
        g++
        }
    }
if not_1080p=1{
    full_ignore_list[g]="1080";
    g++
    full_ignore_list[g]="(1080)";
    g++
    full_ignore_list[g]="1080p";
    g++
    full_ignore_list[g]="(1080p)";
    g++
    }
if not_webrip=1{
    full_ignore_list[g]="webrip";
    g++
    full_ignore_list[g]="(webrip)";
    g++
    full_ignore_list[g]="(HDCAM)";
    g++
    full_ignore_list[g]="HDCAM";
    g++
	
    }
if not_720p=1{
    full_ignore_list[g]="720";
    g++
    full_ignore_list[g]="(720)";
    g++
    full_ignore_list[g]="720p";
    g++
    full_ignore_list[g]="(720p)";
    g++
    }
if not_480p=1{
    full_ignore_list[g]="480";
    g++
    full_ignore_list[g]="(480)";
    g++
    full_ignore_list[g]="480p";
    g++
    full_ignore_list[g]="(480p)";
    g++
    }
    
if no_vids_over_1year=1{
    h = current_year;
    for (i=1900;i<h-1;i++){
        full_ignore_list[g]=i
        g++
        }
    }    
if no_vids_over_5year=1{
    h = current_year;
    for (i=1900;i<h-6;i++){
        full_ignore_list[g]=i
        g++
        }
    }    
if no_vids_over_20year=1{
    h = current_year;
    for (i=1900;i<h-21;i++){
        full_ignore_list[g]=i
        g++
        }
    }    
if episodes_on=1{
	var num_being_added="";
    for (i=1;i<100;i++){
		if i<10{
			num_being_added="EP0"+string(i)
			num_being_added="ep0"+string(i)
			num_being_added="E0"+string(i)
			num_being_added="e0"+string(i)
		}
		else{
			full_ignore_list[g]=string("EP"+string(i));
			full_ignore_list[g]=string("ep"+string(i));
			full_ignore_list[g]=string("E"+string(i));
			full_ignore_list[g]=string("e"+string(i));
		}
        g=g+4
        }
    }    
    
if array_length_1d(ignore_list)>0{
    h = array_length_1d(ignore_list);
    for (i=0;i<h;i++){
        if (string_length(ignore_list[i])>0){
            full_ignore_list[g]=ignore_list[i]
            g++
            }
        }
    }

///setup url based on timer
last_found_amount=0
last_parse_amount=0
total_errors=0
global.url_1_response[0]=-1;
for (d=0;d<array_height_2d(url_list);d++){
	if http_get(url_list[d,0])>0{
		grabber.currently_downloading=1;
	    global.url_1_response[d,0]=http_get(url_list[d,0]);
		}
    }
last_updated=date_datetime_string(date_current_datetime());
last_updated=string_delete(last_updated,28,string_length(last_updated)-26);

//update file stats
if file_exists(string(working_directory)+"tool_stats.ini"){
    var tool_stats_file = ini_open(string(working_directory)+"tool_stats.ini");
    ini_write_string("stats","last_update_time",last_updated);
    ini_close(); 

}

grabber.currently_downloading=0
alarm[0]=timer_minutes_constant*timer_minutes;


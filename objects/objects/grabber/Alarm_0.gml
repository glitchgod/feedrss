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
    
if no_vids_over_1year=1 and no_vids_over_5year= 0 and no_vids_over_20year = 0{
    h = current_year;
    for (i=1900;i<h-1;i++){
        full_ignore_list[g]=i
        g++
        }
    }    
if no_vids_over_5year=1 and no_vids_over_1year= 0 and no_vids_over_20year = 0{
    h = current_year;
    for (i=1900;i<h-6;i++){
        full_ignore_list[g]=i
        g++
        }
    }    
if no_vids_over_20year=1 and no_vids_over_5year= 0 and no_vids_over_1year = 0{
    h = current_year;
    for (i=1900;i<h-21;i++){
        full_ignore_list[g]=i
        g++
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
last_downloaded_amount=0
total_errors=0
global.url_1_response[0]=-1;
for (d=0;d<array_length_1d(url_list);d++){
	if http_get(url_list[d])>0{
	    global.url_1_response[d]=http_get(url_list[d]);
		}
    }
last_updated=date_datetime_string(date_current_datetime());

//update file stats
if file_exists(string(working_directory)+"tool_stats.ini"){
    tool_stats_file = ini_open(string(working_directory)+"tool_stats.ini");
    ini_write_string("stats","last_update_time",last_updated);
    ini_close(); 

}


alarm[0]=timer_minutes_constant*timer_minutes;


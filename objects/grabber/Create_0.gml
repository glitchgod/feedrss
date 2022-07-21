/// @description 

///Main Variables for grabbing from sites (new)
website_url_id[0] = 0;								//id array of the website that keeps track of what website is being looked at
website_raw_out[0] = "";							//raw data that is given from a website
links_found[0] = "";								//keep a list of the parsed links from the sites
links_sorted [0] ="";								//keep track of after the links are sorted
loaded_old_torrents[0] = ""							//keep track of the old torrents downloaded
website_on = "";									//keep track of what feed source is to be written
//needs to be cleaned up
/*
global.url_1_response = "";
raw_1_output = "";
array_of_1[0] = "";
array_of_issues[0] = "";
global.download_link = "";
array_of_2[0] = "";
actual_link = "";
currently_downloading = 0;
multi_url_pull_at = 0;
*/


//timer that resets when to do a url pull
timer_minutes_constant = 0;
timer_minutes_constant = room_speed*60;
timer_minutes = 0;
timer_minutes = 5;
timer_live = "";

//stats to what the program has done on screen
total_errors = 0;
last_updated = "";
last_parse_amount = 0;
last_download_amount = 0;

//setup the storing of websites and website info
url_list[0] = "";					//set up the array to hold the websites
url_list[0,0] = "";					//set up the storing of the website url
url_list[0,1] = "";					//set up the storing of the website issue
url_list[0,2] = "";					//set up the storing of the website last work 
url_list[0,3] = "";					//set up the storing of the website links found
url_list[0,4] = "";					//set up the storing of the website actual downloaded from link
url_list[0,5] = "";					//set up the storing of the website group number

//list of custom words to be ignored
custom_word_list[0] = "";			//set up the array to store the list of custom made words

//setup the list of things to be ignored
ignore_list[0] = "";				//storage of words used by the built in filters

//setup the total things to ignore both custom and filter
filtered_list[0] ="";				//storage that will be used to check all torrents against

//save location
save_file_location = "";

//loading filter variables (new)
custom_flter_options[0] = 0;		//setup filter options | 1 is on | 0 is off

//list of options in order
//RUSSIAN
//Simple Chinese Characters
//common phrases for None English Dub
//common Porn Phrases
//1080 in title
//Webrip in title
//720p in title
//480p in title
//4k and 8k in title
//videos with phrases like HDCAM
//(cmd setup) Double check filtering with tor engine
//Filter out episodes from titles
//"Movie age limiter by years
//Movie no older than [x] Years
//Metacritic min score
//No Movie with a score below [x]
//Imdb rating min score
//No Movie with a score below [x] 
//Use custom word filters
//Simple japanese Characters
//
//
//
//
//

//update info
version_current = "";
version_current = "2.0.0"
version_current_A = 0;
version_current_B = 0;
version_current_C = 0;

version_current_A = 2;
version_current_B = 0;
version_current_C = 0;


//---------------------------------------------------------------------------------
///setup files if nothing is there
//---------------------------------------------------------------------------------

//load stats file
if file_exists(string(working_directory)+"tool_stats.ini"){
    ini_open(string(working_directory)+"tool_stats.ini");
    timer_minutes = ini_read_real("settings","minutes",5);
    last_parse_amount = ini_read_real("stats","last_parse_amount",0);
    last_download_amount = ini_read_real("stats","last_download_amount",0);
    last_updated = ini_read_string("stats","last_update_time","00:00:00");
    save_file_location = ini_read_string("stats","save_file_location","");
    ini_close(); 

}

//load url list file(new)
load_external_website_list();

//load ignore list(new)
load_custom_filter_options();

//setup the filter list
custom_filter_apllier()
/// @description set up test variables
global.folder_folder="";
global.url_1_response="";
raw_1_output="";
array_of_1[0]="";
array_of_issues[0]="";

global.download_link="";
array_of_2[0]="";
actual_link="";
//file_name="";

//restart the program after a time.
restart_whole_thing = 0
restart_whole_thing = 10

//timer that resets when to do a url pull
timer_minutes_constant=0;
timer_minutes_constant=room_speed*60;
timer_minutes=0;
timer_minutes=1;
timer_live="";

//stats to what the program has done
//total_downloaded=0;
total_errors=0;
last_updated="";
last_downloaded_amount=0;
//--also timer_minutes gets loaded to--//
url_list[0]="";
active_url_list=0;
ignore_list[0]=""
Url_count=0;

//save location
save_file_location="";

//full ignore list with options
full_ignore_list[0]="";

//loading filter variables
russian_on=0
china_on=0
countries_on=0
porn_on=0
not_1080p=0
not_webrip=0
not_720p=0
not_480p=0
only_movies=0
no_vids_over_1year=0
no_vids_over_5year=0
no_vids_over_20year=0
//---------------------------------------------------------------------------------
///setup files if nothing is there
//---------------------------------------------------------------------------------

//load stats file
if file_exists("/home/ubuntu/.config/feedrss/"+"tool_stats.ini"){
    ini_open("/home/ubuntu/.config/feedrss/"+"tool_stats.ini");
    timer_minutes=ini_read_real("settings","minutes",1);
    last_downloaded_amount=ini_read_real("stats","last_download_total",0);
    last_updated=ini_read_string("stats","last_update_time","00:00:00");
    save_file_location=ini_read_string("stats","save_file_location","");
    ini_close(); 

}

//load url list file
if file_exists("/home/ubuntu/.config/feedrss/"+"url_list.ini")=true{
    ini_open("/home/ubuntu/.config/feedrss/"+"url_list.ini");
    Url_count=ini_read_real("Amountofurl","Urlcount",0);
	for (r=0; r<real(Url_count);r++) {
	    grabber.url_list[r] = ini_read_string("Amountofurl",r,-1);
	    }
	ini_close(); 
}

//load ignore list
if file_exists("/home/ubuntu/.config/feedrss/"+"ignore_list.ini")=true{
    ini_open("/home/ubuntu/.config/feedrss/"+"ignore_list.ini");
    var total_ignore=ini_read_real("Amount of ignore","Ignore_count",0);
    
    grabber.russian_on = ini_read_real("russian_on","russian_on",0);
    grabber.china_on = ini_read_real("china_text","china_on",0);
    grabber.countries_on = ini_read_real("countries_on","countries_on",0);
    grabber.porn_on = ini_read_real("porn_on","porn_on",0);
    grabber.not_1080p = ini_read_real("not_1080p","not_1080p",0);
    grabber.not_webrip = ini_read_real("not_webrip","not_webrip",0);
    grabber.not_720p = ini_read_real("not_720p","not_720p",0);
    grabber.not_480p = ini_read_real("not_480p","not_480p",0);
    grabber.only_movies = ini_read_real("only_movies","only_movies",0);
    grabber.no_vids_over_1year = ini_read_real("no_vids_over_1year","no_vids_over_1year",0);
    grabber.no_vids_over_5year = ini_read_real("no_vids_over_5year","no_vids_over_5year",0);
    grabber.no_vids_over_20year = ini_read_real("no_vids_over_20year","no_vids_over_20year",0);
    grabber.only_movies = ini_read_real("only_movies","only_movies",1);
    
    if total_ignore>0 {
    for (c=0; c<total_ignore;c++) {
        ignore_list[c]=ini_read_string("Ignore_list",c,"");
        }
    }    
    ini_close(); 
}
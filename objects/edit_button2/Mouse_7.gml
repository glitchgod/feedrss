if instance_exists(pop_up)=false
{
///edit the list

//Popup that edits the list
pop_up_string ="";
premade_options=0;
premade_options=15;
for (d=0;d<array_length_1d(grabber.ignore_list); d++){
 pop_up_string= pop_up_string+ "["+string(d+premade_options)+"]"+string(grabber.ignore_list[d])+"# ";
 }

//russain text setup 
var russian_text=""
if grabber.russian_on=0{
    russian_text = "[1] (DISABLED) Filter out Russain letters # ";
}
if grabber.russian_on=1{
    russian_text = "[1] (ENABLED) Filter out Russain letters # ";
} 
 
//CHINA text setup 
var china_text=""
if grabber.china_on=0{
    china_text = "[2] (DISABLED) Filter out Chinese Characters # ";
}
if grabber.china_on=1{
    china_text = "[2] (ENABLED) Filter out Chinese Characters # ";
}  
 
 
//Japan text setup 
var japan_text=""
if grabber.japan_on=0{
    japan_text = "[3] (DISABLED) Filter out Japanese (Hirigana and Kanji) Characters # ";
}
if grabber.japan_on=1{
    japan_text = "[3] (ENABLED) Filter out Japanese (Hirigana and Kanji) Characters # ";
}  
 
//common location text setup 
var countries_text=""
if grabber.countries_on=0{
    countries_text = "[4] (DISABLED) Filter out words like.  Hindi, Spanish, Italian, korean, chinese, German # ";
}
if grabber.countries_on=1{
    countries_text = "[4] (ENABLED) Filter out words like.  Hindi, Spanish, Italian, korean, chinese, German # ";
} 
 
//common porn text setup 
var porn_text=""
if grabber.porn_on=0{
    porn_text = "[5] (DISABLED) Filter out common porn words  # ";
}
if grabber.porn_on=1{
    porn_text = "[5] (ENABLED) Filter out common porn words  # ";
} 
 
//resolution filters 
//--------------------------------------------------
//1080p text setup 
var text_1080p=""
if grabber.not_1080p=0{
    text_1080p = "[6] (DISABLED) Filter out videos with 1080p in title # ";
}
if grabber.not_1080p=1{
    text_1080p = "[6] (ENABLED) Filter out videos with 1080p in title # ";
}  
//webrip text setup 
var webrip_text=""
if grabber.not_webrip=0{
    webrip_text = "[7] (DISABLED) Filter out videos with webrip and HDCAM in title # ";
}
if grabber.not_webrip=1{
    webrip_text = "[7] (ENABLED) Filter out videos with webrip and HDCAM in title # ";
}  
//720p text setup 
var text_720p=""
if grabber.not_720p=0{
    text_720p = "[8] (DISABLED) Filter out videos with 720p in title # ";
}
if grabber.not_720p=1{
    text_720p = "[8] (ENABLED) Filter out videos with 720p in title # ";
}  
//480p text setup 
var text_480p=""
if grabber.not_480p=0{
    text_480p = "[9] (DISABLED) Filter out videos with 480p in title # ";
}
if grabber.not_480p=1{
    text_480p = "[9] (ENABLED) Filter out videos with 480p in title # ";
}

//----------------------------------------------------------------------------------------------------------------------------------
//video age filters 
//----------------------------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------------------------

//1 year text setup 
var text_1year=""
if grabber.no_vids_over_1year=0 and grabber.no_vids_over_5year!=1 and grabber.no_vids_over_20year != 1 {
    text_1year = "[10] (DISABLED) Filter out videos with 1 year older then the current in title. #";
}
if grabber.no_vids_over_1year=1 and grabber.no_vids_over_5year!=1 and grabber.no_vids_over_20year != 1 {
    text_1year = "[10] (ENABLED) Filter out videos with 1 year older then the current in title. #";
} 
if grabber.no_vids_over_5year=1 or grabber.no_vids_over_20year = 1 {
    text_1year = "[10] (Not Allowed) Option [11] or Option [12] are enabled and would only duplicate filter years # ";
} 

//5 year text setup 
var text_5year=""
if grabber.no_vids_over_5year=0 and grabber.no_vids_over_20year!=1 and grabber.no_vids_over_1year != 1{
    text_5year = "[11] (DISABLED) Filter out videos that are 5 years older then the current in title. # ";
}
if grabber.no_vids_over_5year=1 and grabber.no_vids_over_20year!=1 and grabber.no_vids_over_1year != 1 {
    text_5year = "[11] (ENABLED) Filter out videos that are 5 years older then the current in title. # ";
}
if grabber.no_vids_over_20year=1 or grabber.no_vids_over_1year = 1 {
    text_5year = "[11] (Not Allowed) Option [10] or Option [12] are enabled and would only duplicate filter years # ";
}

//20 year text setup 
var text_20year=""
if grabber.no_vids_over_20year=0 and grabber.no_vids_over_5year!=1 and grabber.no_vids_over_1year != 1 {
    text_20year = "[12] (DISABLED) Filter out videos that are 20 years older then the current in title. # ";
}
if grabber.no_vids_over_20year=1 and grabber.no_vids_over_5year!=1 and grabber.no_vids_over_1year != 1 {
    text_20year = "[12] (ENABLED) Filter out videos that are 20 years older then the current in title. # ";
} 
if grabber.no_vids_over_5year=1 or grabber.no_vids_over_1year = 1 {
    text_20year = "[12] (Not Allowed) Option [10] or Option [11] are enabled and would only duplicate filter years # ";
} 

//Filter only movies 
var text_only_movies=""
if grabber.only_movies = 0{
    text_only_movies = "[13] (DISABLED) Filter out videos WITHOUT the category movie (cant work without a category in feed). # ";
}
if grabber.only_movies = 1{
    text_only_movies = "[13] (ENABLED) Filter out videos WITHOUT the category movie (cant work without a category in feed). # ";
}

//Filter out episodes
var text_episodes_on=""
if grabber.episodes_on = 0{
    text_episodes_on = "[14] (DISABLED) Filter out videos WITH 'Ep01' - 'Ep100' in the title. # ";
}
if grabber.episodes_on = 1{
    text_episodes_on = "[14] (ENABLED) Filter out videos WITH 'Ep01' - 'Ep100' in the title. # ";
}
//----------------------------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------------------------

var spacer = "#-----------------------------------------------------------------------------------# ";
var spacer1 = "-----------------------------------------------------------------------------------# "; 
 
var spacer2 = "------------------------- Custom added Words ------------------------------#"+"To add a custom word, type in A SINGLE WORD and click ok "+"#"+"DONT' ADD BLANK AREAS TO THE FILTER SYSTEM. IT WILL DENY ANYTHING WITH A SPACE IN THE TITLE"; 
 
var text_to_show_info = "----------------------"+" WORD FILTER OPTIONS"+"-----------------------------#"+"To enable an option type in the number infront of the Word then hit ok"+string(spacer);
var text_to_show_options = string(russian_text)+string(china_text)+string(japan_text)+string(countries_text)+string(porn_text)+string(text_1080p)+string(webrip_text)+string(text_720p)+string(text_480p)+string(text_1year)+string(text_5year)+string(text_20year)+string(text_only_movies)+string(text_episodes_on)+string(spacer1)+string(spacer2)+string(spacer);
var text_to_show_custom_list = string(pop_up_string);

//create popup
var pop = instance_create(x,y,pop_up);
pop.pop_up_type =1
pop.pop_up_text=string(text_to_show_info)+string(text_to_show_options)+string(text_to_show_custom_list)+string(spacer);
pop_up.pop_up_text_lines += string_count("#",text_to_show_info) +  string_count("#",text_to_show_options);
pop_up.pop_up_text_lines += array_length_1d(grabber.ignore_list);

}

mouse_enter_key = 0 ;		//mouse overed
clicked_on = 0;				//mouse clicked inside
//state = 0;				//0 = off |1 = on
//attached_to = 0;		//what setting is going to be edited
//page_set_to = 0;		//what the object is set to show based on filter_shower filter_page_on

option_text = "";		//the text that is shown based on what it is attached to
info = "" ;				//text converted to have wrap around
page_on = 0;			//page it is on

//special_number = 0;		//special number for this settings


page_on = page_set_to;

paired_button = instance_create_depth(x + 36,y ,-1,plus_button_up_filter);	//make the plus button attached to the minus
paired_button.attached_to =self.attached_to;								//set the made buttons attached to 
paired_button.minus_attached = self.id;										//set what minus the paired spawns with


switch (attached_to){
	case 0:
	option_text = "Filter out Russian Letters "
	break;
	case 1:
	option_text = "Filter out Simple Chinese Characters "
	break;
	case 2:
	option_text = "Filter out common phrases for None English Dub "
	break;
	case 3:
	option_text = "Filter out common Porn Phrases "
	break;
	case 4:
	option_text = "Filter out videos that have 1080 in title."
	break;
	case 5:
	option_text = "Filter out videos that have Webrip in title."
	break;
	case 6:
	option_text = "Filter out videos that have 720p in title."
	break;
	case 7:
	option_text = "Filter out videos that have 480p in title."
	break;
	case 8:
	option_text = "Filter out videos that have 4k and 8k in title."
	break;
	case 9:
	option_text = "Filter out videos with phrases like HDCAM "
	break;
	case 10:
	option_text = "(cmd setup) Double check filtering with tor engine."
	break;
	case 11:
	option_text = "Filter out episodes from titles "
	break;
	case 12:
	option_text = "Movie age limiter by years "
	break;
	case 13:
	option_text = "Movie no older than [" + string(special_number) +"] Years "
	paired_button.minus_attached_limit = 100;
	break;
	case 14:
	option_text = "Metacritic min score "
	break;
	case 15:
	option_text = "No Movie with a score below [" + string(special_number) +"]  "
	paired_button.minus_attached_limit = 10;
	break;
	case 16:
	option_text = "Imdb rating min score "
	break;
	case 17:
	option_text = "No Movie with a score below [" + string(special_number) +"]  "
	paired_button.minus_attached_limit = 10;
	break;
	case 18:
	option_text = "Use custom word filters "
	break;
	case 19:
}
info = convert_text(option_text,300,font_medium)

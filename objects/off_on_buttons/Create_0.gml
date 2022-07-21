/// @description Insert description here
state = 0;				//0 = off |1 = on
//attached_to = 0;		//what setting is going to be edited
//page_set_to = 0;		//what the object is set to show based on filter_shower filter_page_on
option_text = "";		//the text that is shown based on what it is attached to
info = "" ;				//text converted to have wrap around
page_on = 0;

page_on = page_set_to;

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
	option_text = "Movie no older than [x] Years "
	break;
	case 14:
	option_text = "Metacritic min score "
	break;
	case 15:
	option_text = "No Movie with a score below [x] "
	break;
	case 16:
	option_text = "Imdb rating min score "
	break;
	case 17:
	option_text = "No Movie with a score below [x] "
	break;
	case 18:
	option_text = "Use custom word filters "
	break;
	case 19:
	option_text = "Filter out Simple Japanese Characters "
	break;
}
info = convert_text(option_text,300,font_medium)


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
	option_text = "[Broken](cmd setup) Double check filtering with tor engine."
	break;
	case 11:
	option_text = "Filter out episodes from titles "
	break;
	case 12:
	option_text = "[Broken]Movie age limiter by years "
	break;
	case 13:
	option_text = "[Broken]Movie no older than [x] Years "
	break;
	case 14:
	option_text = "[Broken]Metacritic min score "
	break;
	case 15:
	option_text = "[Broken]No Movie with a score below [x] "
	break;
	case 16:
	option_text = "[Broken]Imdb rating min score "
	break;
	case 17:
	option_text = "[Broken]No Movie with a score below [x] "
	break;
	case 18:
	option_text = "Use custom word filters "
	break;
	case 19:
	option_text = "Filter out Simple Japanese Characters "
	break;
}
info = convert_text(option_text,300,font_medium)

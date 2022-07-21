if instance_exists(filter_shower) = true{
	
	if (page_on !=page_set_to){
		if (page_on > page_set_to){
			self.x =self.x -512
		}
		if (page_on < page_set_to){
			self.x =self.x +512
		}
	page_set_to = page_on;
	}
	
	
	if (attached_to = 18){								//custom word button
		if (instance_exists(words_button)=false) and (state = 1){
			instance_create_depth(288,416,-1,words_button)
		}
		if (instance_exists(words_button)=true) and (state = 0){			
			instance_destroy(words_button);
		}
	}

	//special_number = state;								//set teh state to be of use

	
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
		break;
		case 14:
		option_text = "Metacritic min score "
		break;
		case 15:
		option_text = "No Movie with a score below [" + string(special_number) +"]  "
		break;
		case 16:
		option_text = "Imdb rating min score "
		break;
		case 17:
		option_text = "No Movie with a score below [" + string(special_number) +"]  "
		break;
		case 18:
		option_text = "Use custom word filters "
		break;
		case 19:
	}
info = convert_text(option_text,300,font_medium)
}
	
	


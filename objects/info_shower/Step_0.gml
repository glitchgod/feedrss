/// @description update the info
switch (page_on){			//switch what text is shown
	case 1: 
		info = page_1_text;
	break;
	case 2: 
		info = page_2_text;
	break;
	case 3: 
		info = page_3_text;
	break;
	case 4: 
		info = page_4_text;
	break;
	case 5: 
		info = page_5_text;
	break;
	case 6: 
		info = page_6_text;
	break;
	case 7: 
		info = page_7_text;
	break;
	default: 
		info = page_1_text;
	break;
}
info = convert_text(info,room_width-(room_width/6),font_small)			//set the text to be formated
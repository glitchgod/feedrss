/// @description shift position based on history shower
if (history_shower.search_on =0){
	if (history_shower.shift_buttons = 0) and (x != 0){
		x = 0;
	}

	if (history_shower.shift_buttons = 1) and (x != -1000){
		x = -1000;
	}

	if (y >= 320){
		visible = false;
	}
	if (y < 32){
		visible = false;
	}
	if (y >= 33 ) and (y <320 ){
		visible =true;
	}

}
else{
	visible = false;
}


if (updated_numbers = 0) and (text_to_draw_0 !=""){						//update the pull count
	
	if (string_length(text_to_draw_5) = 28){	//get if it was downloaded or not
		history_shower.total_downed++;
		updated_numbers++;
	}
	if (string_length(text_to_draw_5) != 28){	//get if it was downloaded or not
		history_shower.total_ignored++;
		updated_numbers++;
	}
}

y = ystart - (32 *history_shower.page_on);
if (string_length(option_text) > 2){
	switch (state){
		//state = 0;				//0 = off |1 = on
		case 0:
			state = 1;										//show it on
			grabber.custom_flter_options[attached_to] = 1 ;	//turn it on in the program
		break;
		case 1:
			state = 0;										//show it off
			grabber.custom_flter_options[attached_to] = 0 ;	//turn it off in the program
		break;
	}
}

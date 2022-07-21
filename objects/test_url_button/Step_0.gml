/// @description Insert description here
 //(array_length(website_shower.edit_list)
 //website_shower.website_list_length=0;
 switch (line_on){
	case 0:
		if abs((website_shower.website_page_on+1  * 3)-array_length(website_shower.edit_list)) = abs(1){
			can_use = 1;
		}
		else{
			can_use = 0;
		}
	break;
	case 1:
		if abs(array_length(website_shower.edit_list)-(website_shower.website_page_on * 3)) >0{
			can_use = 1;
		}
		else{
			can_use = 0;
		}
		
	break;
	case 2:
		if abs(array_length(website_shower.edit_list)-(website_shower.website_page_on * 3)) > abs(1){
			can_use = 1;
		}
		else{
			can_use = 0;
		}
		
	break;
	case 3:
		if abs(array_length(website_shower.edit_list)-(website_shower.website_page_on * 3)) > abs(2){
			can_use = 1;
		}
		else{
			can_use = 0;
		}
		
	break;
	default:can_use=1;
 }
/// @description Insert description here
// You can write your code in this editor

mouse_enter_key = 0 ;		//mouse overed
clicked_on = 0;				//mouse clicked inside
attached_to = 0;			//what setting is going to be edited
can_use = 1;				//to show or not show
//line_on = 1				//what line the button is on
current_page = 0; 			//used to store what page on website listing is active
use_site_number = 0; 		//used to store what number the info should be in on the website listing room
use_site = 0;				//used to store website from the  number the info should be in on the website listing room
word_attached_to = 0;		//used to store what word is attached to it

/* attached to list
1		-			custom save location
2		-			website edit url
3		-			word edit 
*/
if room_get_name(room) = "save_room"{
	attached_to = 1;
	}
if room_get_name(room) = "website_room"{
	attached_to = 2;
	}
if room_get_name(room) = "word_room"{
	attached_to = 3;
	}

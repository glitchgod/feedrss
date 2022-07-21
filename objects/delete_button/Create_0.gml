/// @description Insert description here
// You can write your code in this editor

mouse_enter_key = 0 ;		//mouse overed
clicked_on = 0;				//mouse clicked inside
can_use = 0;				//that it can be of use
//line_on = 1				//what line the button is on
array_partA[0] = 0;			//the number of entries to copy before this clicked button
array_partB[0] = 0;			//the number of entries to copy after this clicked button
array_holder[0] = 0;		//set up the array to hold the parts

word_attached_to = 0;		//on word room it attaches to certain word object
if (room_get_name(room) = "word_room") = true {	//make it able to be used when in this room
	can_use = 1;
}

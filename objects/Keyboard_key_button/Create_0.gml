/// @description Insert description here
// You can write your code in this editor

this_key = "";				//what the key shows
mouse_enter_key = 0 ;		//mouse overed
clicked_on = 0;				//mouse clicked inside
special = 0;				//is a special key |  0 = no | 1 = shift | 2 = backspace | 3 = close | 4 - move
repeat_button = 0;					//repeat the pressed button | 0 = no | 1 = yes

disatance_to_move_x = 0;
disatance_to_move_y = 0;

disatance_to_move_x = (keyboard_spawner.x - self.x) * -1;
disatance_to_move_y = (keyboard_spawner.y - self.y) * -1;
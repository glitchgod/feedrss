/// @description Insert description here
// You can write your code in this editor
follow_mouse = 0;
text_shifted = 0;

keyboard_keys_possible = 0;
keyboard_keys_possible[0] = "q";
keyboard_keys_possible[1] = "w";
keyboard_keys_possible[2] = "e";
keyboard_keys_possible[3] = "r";
keyboard_keys_possible[4] = "t";
keyboard_keys_possible[5] = "y";
keyboard_keys_possible[6] = "u";
keyboard_keys_possible[7] = "i";
keyboard_keys_possible[8] = "o";
keyboard_keys_possible[9] = "p";
keyboard_keys_possible[10] = "[";
keyboard_keys_possible[11] = "]";
keyboard_keys_possible[12] = "\\";
keyboard_keys_possible[13] = "a";
keyboard_keys_possible[14] = "s";
keyboard_keys_possible[15] = "d";
keyboard_keys_possible[16] = "f";
keyboard_keys_possible[17] = "g";
keyboard_keys_possible[18] = "h";
keyboard_keys_possible[19] = "j";
keyboard_keys_possible[20] = "k";
keyboard_keys_possible[21] = "l";
keyboard_keys_possible[22] = ";";
keyboard_keys_possible[23] = "'";
keyboard_keys_possible[24] = "Shift";
keyboard_keys_possible[25] = "z";
keyboard_keys_possible[26] = "x";
keyboard_keys_possible[27] = "c";
keyboard_keys_possible[28] = "v";
keyboard_keys_possible[29] = "b";
keyboard_keys_possible[30] = "n";
keyboard_keys_possible[31] = "m";
keyboard_keys_possible[32] = ",";
keyboard_keys_possible[33] = ".";
keyboard_keys_possible[34] = "/";
keyboard_keys_possible[35] = "<=X=";
keyboard_keys_possible[36] = ""
keyboard_keys_possible[37] = ""
keyboard_keys_possible[38] = ""
keyboard_keys_possible[39] = "<x>";
keyboard_keys_possible[40] = "`";
keyboard_keys_possible[41] = "1";
keyboard_keys_possible[42] = "2";
keyboard_keys_possible[43] = "3";
keyboard_keys_possible[44] = "4";
keyboard_keys_possible[45] = "5";
keyboard_keys_possible[46] = "6";
keyboard_keys_possible[47] = "7";
keyboard_keys_possible[48] = "8";
keyboard_keys_possible[49] = "9";
keyboard_keys_possible[50] = "0";
keyboard_keys_possible[51] = "-";
keyboard_keys_possible[52] = "=";
keyboard_keys_possible[53] = "";
keyboard_keys_possible[54] = "X";
//qwerty keyboard set up

row_number=0
row_number=1
for (i=0;i<array_length(keyboard_keys_possible);i++){
	
	if (row_number = 1){
		var active_button = instance_create_depth(x + (sprite_get_width(keyboard_key_background) * i ), y + (row_number *(sprite_get_height(keyboard_key_background))),-10,Keyboard_key_button)
		active_button.this_key = string(keyboard_keys_possible[i]);
	}
	if (row_number = 2){
		var active_button = instance_create_depth(x + (sprite_get_width(keyboard_key_background) * (i - 13) ), y + (row_number *(sprite_get_height(keyboard_key_background))),-10,Keyboard_key_button)
		active_button.this_key = string(keyboard_keys_possible[i]);
		if (i = 24){
			active_button.special = 1
			active_button.sprite_index = keyboard_key_background_1;
		}
	}
	if (row_number = 3){
		if (string(keyboard_keys_possible[i]) != ""){
			var active_button = instance_create_depth(x + (sprite_get_width(keyboard_key_background) * (i -  25) ), y + (row_number *(sprite_get_height(keyboard_key_background))),-10,Keyboard_key_button)
			active_button.this_key = string(keyboard_keys_possible[i]);
			if (i = 35){
				active_button.special = 2
				active_button.sprite_index = keyboard_key_background_2;
			}
			if (i = 39){
				active_button.special = 4;
				active_button.sprite_index = keyboard_key_background_move;
				active_button.this_key="";
			}
		}
	}
	if (row_number = 0){
		if (string(keyboard_keys_possible[i]) != ""){
			var active_button = instance_create_depth(x + (sprite_get_width(keyboard_key_background) * (i - 40) ), y + (row_number *(sprite_get_height(keyboard_key_background))),-10,Keyboard_key_button)
			active_button.this_key = string(keyboard_keys_possible[i]);
			if (i = 54){
				active_button.special = 3
			}
		}
	}
	
	if ( i = 12){
		row_number++;
	}
	if ( i = 24){
		row_number++;
	}
	if ( i = 39){
		row_number = 0;
	}
	
	
}
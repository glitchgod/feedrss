
switch (blink_line){
	case 0:
		blink_line = 1;
	break;
	case 1:
		blink_line = 0;
	break;
}
alarm[0] = room_speed / 6;
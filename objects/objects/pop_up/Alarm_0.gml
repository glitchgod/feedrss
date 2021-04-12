if blink_cursor = 0{
    alarm[0] = room_speed*.25;
    blink_cursor = 1
    exit
    }
if blink_cursor = 1{
    alarm[0] = room_speed*.25;
    blink_cursor = 0
    exit;
    }




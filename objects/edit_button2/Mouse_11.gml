/// @description reset popup text alarm
alarm[11]=-1;
if instance_exists(popup_text_box){
	instance_destroy(popup_text_box)
}
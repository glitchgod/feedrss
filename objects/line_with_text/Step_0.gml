/// @description create buttons when able

if (attached_to_edit != 0) and ( instance_exists(apply_button) = false){
	instance_create_depth(room_width - 96, y, -1,apply_button)
	instance_create_depth(room_width - ( 96 * 2 ) , y, -1,cancel_button)
}
text_to_show = keyboard_string;
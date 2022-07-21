/// @description Insert description here
// You can write your code in this editor
clicked_on = 0;
if (instance_exists(line_with_text)  = true){
	line_with_text.text_to_show  = "";
	line_with_text.attached_to_edit = 0;
	if (instance_exists(apply_button)  = true){
		instance_destroy(apply_button);
	}
	instance_destroy(self);
	keyboard_string = "";				//reset the text
}
///@description shift the button location
if (visible = true) and (mouse_x <= room_width-32) {
	clicked_on = 0;
	info_main = string(text_to_draw_0) + "\n" + string(text_to_draw_1) + "\n" + string(text_to_draw_2) + "\n" + string(text_to_draw_3) + "\n" + string(text_to_draw_4) + "\n" + string(text_to_draw_5) + "\n" + string(text_to_draw_6);

	info = convert_text(info_main,room_width-48,font_medium)

	show_details = 1;
	history_shower.shift_buttons = 1
	delete_history_button.xyz_pass_over =xyz_number;
}
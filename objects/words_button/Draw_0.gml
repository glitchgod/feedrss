/// @description draw_self
draw_set_font(font_small);
draw_text(x+8,y+68,"V"+string(grabber.version_current));
if mouse_enter_key = 0 {	//mouse not over
	if clicked_on = 0 {
		draw_sprite_ext(button_background, 9, x, y,1,1,0,c_white,1)
	}
}

if mouse_enter_key = 1 {	//mouse over	
	if clicked_on = 0 {
		draw_sprite_ext(button_background, 9, x, y,1,1,0,c_white,1)
		draw_sprite_ext(button_background, 9, x, y,1,1,0,c_black,.25)
	}
	if clicked_on = 1 {
		draw_sprite_ext(button_background, 9, x, y,1,1,0,c_white,0)
		draw_sprite_ext(button_background, 9, x, y,1,1,0,c_green,1)
	}
}
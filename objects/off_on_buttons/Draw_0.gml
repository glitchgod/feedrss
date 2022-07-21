if (string_length(option_text) > 2){
	if (state = 0){
		draw_sprite(off_on_sprite,0,x,y)
	}
	if (state = 1){
		draw_sprite(off_on_sprite,1,x,y)
	}

	//set the color of text to white
	draw_set_color(c_white);
	draw_set_font(font_medium);
	draw_set_halign(fa_left);
	draw_text(x-324,y,string(info));	//actual text to draw




	//reset the color scheme
	draw_set_color(c_black);
	draw_set_halign(fa_left)
}

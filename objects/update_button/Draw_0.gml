/// @description draw_self
if (is_update = 1){
	draw_sprite_ext(self.sprite_index ,5,x,y,1,1,0,c_white,1)
	draw_set_font(font_small);
	draw_text(x+8,y+68,"V"+string(update_button.version_check));
	
}


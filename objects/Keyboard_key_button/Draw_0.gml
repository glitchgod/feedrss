/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center)

if mouse_enter_key = 0 {	//mouse not over
	if special = 0{
		draw_self()
	
		if clicked_on = 0 {
			draw_self();
		}
	}
}

if mouse_enter_key = 1 {	//mouse over	
	if (special != 3) and (special != 2){
		if clicked_on = 0 {
			draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_gray,1);
		}
		if clicked_on = 1 {
			draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_blue,1);
		}
	}
	if special = 3{
		if clicked_on = 0 {
			draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_yellow,1);
		}
		if clicked_on = 1 {
			draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_red,1);
		}
	}
	if special = 2{
		if clicked_on = 0 {
			draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_red,1);
		}
		if clicked_on = 1 {
			draw_sprite_ext(self.sprite_index,-1,x,y,1,1,0,c_black,1);
		}
	}
}

draw_set_font(font_small)
draw_set_color(c_black)
switch (keyboard_spawner.text_shifted){
	case 0:
		if special = 0{
			draw_text(x + 14 ,y + 6,string(this_key))
		}
		if special = 1{
			draw_text(x + 32 ,y + 8,string(this_key))
		}
		if special = 2{
			draw_text(x + 32 ,y + 8,string(this_key))
		}
		if special = 3{
			draw_text(x + 12 ,y + 8,string(this_key))
		}
		if special = 4{
			draw_text(x + 12 ,y + 8,"")
		}
	break;	
	case 1:
		if special = 0{
			draw_text(x + 14 ,y + 6,string_upper(string(this_key)))
		}
		if special = 1{
			draw_text(x + 32 ,y + 8,string(this_key))
		}
		if special = 2{
			draw_text(x + 32 ,y + 8,string(this_key))
		}
		if special = 3{
			draw_text(x + 12 ,y + 8,string(this_key))
		}
		if special = 4{
			draw_text(x + 12 ,y + 8,"")
		}
	break;
}
draw_set_halign(fa_left)
draw_set_color(c_black)
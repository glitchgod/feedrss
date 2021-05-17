/// @description Insert description here
// You can write your code in this editor
if grabber.currently_downloading=1 or alarm[0]>0{
	draw_sprite_ext(download_button,-1,x,y,1,1,0,c_ltgray,1)
	draw_set_font(font1)
	draw_text_color(x+175,y,"IN PROGRESS",c_black,c_black,c_black,c_black,1)
	draw_text_color(x+175,y+50,"IN PROGRESS",c_black,c_black,c_black,c_black,1)
	}
else{
	draw_self();
}
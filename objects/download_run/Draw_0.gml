/// @description Insert description here
// You can write your code in this editor
// grabber.multi_url_pull_at
// array_length_1d(global.url_1_response)

if (grabber.currently_downloading=1 or alarm[0]>0) and (array_length_1d(global.url_1_response)>0){
	var each_part = round(real(sprite_get_width(download_button_dark) / array_length_1d(global.url_1_response)));
	draw_sprite_ext(download_button_dark,-1,x+(each_part*grabber.multi_url_pull_at),y,1,1,0,c_ltgray,1)
	draw_set_font(font1)
	draw_set_halign(fa_center)
	draw_text_color(x+sprite_get_width(download_button_dark)/2,y,"IN PROGRESS",c_black,c_black,c_black,c_black,1)
	draw_text_color(x+sprite_get_width(download_button_dark)/2-2,y-2,"IN PROGRESS",c_white,c_white,c_white,c_white,1)
	draw_text_color(x+sprite_get_width(download_button_dark)/2,y+25,string(grabber.multi_url_pull_at)+" : "+string(array_length_1d(global.url_1_response)),c_black,c_black,c_black,c_black,1)
	draw_text_color(x+sprite_get_width(download_button_dark)/2-2,y+22,string(grabber.multi_url_pull_at)+" : "+string(array_length_1d(global.url_1_response)),c_white,c_white,c_white,c_white,1)
	draw_text_color(x+sprite_get_width(download_button_dark)/2,y+50,"URL(s) Processed : Total URL(s)",c_black,c_black,c_black,c_black,1)
	draw_text_color(x+sprite_get_width(download_button_dark)/2-2,y+48,"URL(s) Processed : Total URL(s)          ",c_white,c_white,c_white,c_white,1)
	draw_set_halign(fa_left)//reset all halign
	}
else{
	draw_self();
}
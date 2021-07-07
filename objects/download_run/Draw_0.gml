/// @description Insert description here

each_part=0	
draw_self();

//for multiple rss feeds
if (is_array(global.url_1_response)=true) and (array_length_1d(global.url_1_response)>1){
	if (grabber.multi_url_pull_at<real(array_length_1d(global.url_1_response))-1) and (array_length_1d(global.url_1_response)>0){
		each_part = round(real(sprite_get_width(download_button_dark) / array_length_1d(global.url_1_response)));
		draw_sprite_ext(download_button_dark,-1,x+((each_part)*(grabber.multi_url_pull_at+1)),y,1,1,0,c_ltgray,1)
	
	
		draw_set_font(font1)
		draw_set_halign(fa_center)
		draw_text_color(x+sprite_get_width(download_button_dark)/2-2,y-2,"Processing",c_black,c_black,c_black,c_black,1)
		draw_text_color(x+sprite_get_width(download_button_dark)/2,y,"Processing",c_white,c_white,c_white,c_white,1)
		draw_text_color(x+sprite_get_width(download_button_dark)/2-2,y+22,string(grabber.multi_url_pull_at+1)+" : "+string(array_length_1d(global.url_1_response)),c_black,c_black,c_black,c_black,1)
		draw_text_color(x+sprite_get_width(download_button_dark)/2,y+25,string(grabber.multi_url_pull_at+1)+" : "+string(array_length_1d(global.url_1_response)),c_white,c_white,c_white,c_white,1)
		draw_text_color(x+sprite_get_width(download_button_dark)/2-2,y+48,"URL(s) Processed : Total URL(s)           ",c_black,c_black,c_black,c_black,1)
		draw_text_color(x+sprite_get_width(download_button_dark)/2,y+50,"URL(s) Processed : Total URL(s)           ",c_white,c_white,c_white,c_white,1)
		draw_set_halign(fa_left)
		draw_rectangle_color(x+sprite_get_width(download_button_dark),y,x+600,y+sprite_get_height(download_button_dark),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,false);
	}
}

//for single rss feeds
if (is_array(global.url_1_response)=true) and (array_length_1d(global.url_1_response)=1) and (global.url_1_response[0] != -1){
	if (grabber.multi_url_pull_at>=0 and grabber.multi_url_pull_at<real(array_length_1d(global.url_1_response))) and (array_length_1d(global.url_1_response)>0){
		each_part = round(real(sprite_get_width(download_button_dark) / array_length_1d(global.url_1_response)));
		draw_sprite_ext(download_button_dark,-1,x,y,1,1,0,c_ltgray,1)
	
	
		draw_set_font(font1)
		draw_set_halign(fa_center)
		draw_text_color(x+sprite_get_width(download_button_dark)/2-2,y-2,"Processing",c_black,c_black,c_black,c_black,1)
		draw_text_color(x+sprite_get_width(download_button_dark)/2,y,"Processing",c_white,c_white,c_white,c_white,1)
		draw_text_color(x+sprite_get_width(download_button_dark)/2-2,y+22,string(grabber.multi_url_pull_at+1)+" : "+string(array_length_1d(global.url_1_response)),c_black,c_black,c_black,c_black,1)
		draw_text_color(x+sprite_get_width(download_button_dark)/2,y+25,string(grabber.multi_url_pull_at+1)+" : "+string(array_length_1d(global.url_1_response)),c_white,c_white,c_white,c_white,1)
		draw_text_color(x+sprite_get_width(download_button_dark)/2-2,y+48,"URL(s) Processed : Total URL(s)           ",c_black,c_black,c_black,c_black,1)
		draw_text_color(x+sprite_get_width(download_button_dark)/2,y+50,"URL(s) Processed : Total URL(s)           ",c_white,c_white,c_white,c_white,1)
		draw_set_halign(fa_left)
		draw_rectangle_color(x+sprite_get_width(download_button_dark),y,x+600,y+sprite_get_height(download_button_dark),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,false);
	}
}

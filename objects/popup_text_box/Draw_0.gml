/// @description popup_text_box
text_width=string_width(mouse_over_text)
if mouse_x<room_width/2{
	draw_rectangle_color(mouse_x+12,mouse_y,mouse_x+(text_width*1.05)+12,mouse_y+24,c_dkgray,c_dkgray,c_dkgray,c_dkgray,0)
	draw_rectangle_color(mouse_x+12,mouse_y,mouse_x+(text_width*1.05)+12,mouse_y+24,c_white,c_white,c_white,c_white,1)
	draw_text_color(mouse_x+12+4,mouse_y+3,mouse_over_text,c_white,c_white,c_white,c_white,1)
}
if mouse_x>=room_width/2{
	draw_rectangle_color(mouse_x-(text_width*1.09)-12,mouse_y,mouse_x-12,mouse_y+24,c_dkgray,c_dkgray,c_dkgray,c_dkgray,0)
	draw_rectangle_color(mouse_x-(text_width*1.09)-12,mouse_y,mouse_x-12,mouse_y+24,c_white,c_white,c_white,c_white,1)
	draw_text_color(mouse_x-(text_width*1.09)-4,mouse_y+3,mouse_over_text,c_white,c_white,c_white,c_white,1)
}
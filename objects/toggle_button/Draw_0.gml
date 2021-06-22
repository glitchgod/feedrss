/// draw self
//draw backing
draw_roundrect_color(x,y,x+self_button_width,y+self_button_height,c_grey,c_grey,false)//back
draw_roundrect_color(x,y,x+self_button_width,y+self_button_height,c_blue,c_blue,true)//top

//draw center
if on_yes_no =0{
	draw_roundrect_color(x,y,(x+(1-self_button_width/3)*-1),y+1+self_button_height-1,c_red,c_red,false)//back
}
if on_yes_no =1{
	draw_roundrect_color(x+(self_button_width/3),y,x+((self_button_width/3)*3),y+1+self_button_height-1,c_green,c_green,false)//back
}
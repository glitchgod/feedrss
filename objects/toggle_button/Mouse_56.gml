///clicked
if instance_exists(pop_up) != true{
	if (mouse_x>self.x and mouse_x<self.x+self_button_width ) and (mouse_y>self.y and mouse_y<self.y+self_button_height ){
		if on_yes_no=0{
			on_yes_no=1
			exit;
			}
		if on_yes_no=1{
			on_yes_no=0
			exit;
			}
	}
}
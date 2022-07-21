if (room = info_room ){
	if (info_shower.page_on <info_shower.page_count){
		draw_sprite_ext(self.sprite_index ,2,x,y,1,1,direction,c_white,1)
	}
	else{
		draw_sprite_ext(self.sprite_index ,2,x,y,1,1,direction,c_red,1)
	}
}
else{
		draw_sprite_ext(self.sprite_index ,2,x,y,1,1,direction,c_white,1)
}
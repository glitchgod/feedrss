if (room = info_room ){
	if (info_shower.page_on > 1){
		draw_sprite_ext(self.sprite_index ,1,x,y,1,1,direction,c_white,1);
		
	}
	else{
		draw_sprite_ext(self.sprite_index ,1,x,y,1,1,direction,c_red,1)
	}
}
else{
	draw_sprite_ext(self.sprite_index ,1,x,y,1,1,direction,c_white,1)
}
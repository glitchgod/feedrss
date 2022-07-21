if instance_exists(filter_shower) = true{
	
	if (page_on !=page_set_to){
		if (page_on > page_set_to){
			self.x =self.x -512
		}
		if (page_on < page_set_to){
			self.x =self.x +512
		}
	page_set_to = page_on;
	}
	
	
	
	
	if (attached_to = 18){								//custom word button
		if (instance_exists(words_button)=false) and (state = 1){
			instance_create_depth(288,416,-1,words_button)
		}
		if (instance_exists(words_button)=true) and (state = 0){			
			instance_destroy(words_button);
		}
	}
}

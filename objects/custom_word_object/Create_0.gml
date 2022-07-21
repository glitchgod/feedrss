/// @description
attached_to_A = 0 ;														//the edit button this is attached to 
attached_to_B = 0 ;														//the delete button this is attached to 
on_page = 0;															//page this spawns on
spawn_column = 0;														//column it spawns in

word_number = instance_number(custom_word_object);															//test to see what is the spawn number

attached_to_A = instance_create_depth(x ,y + 24,-1,main_edit_button)	//add edit button made
attached_to_B = instance_create_depth(x + 120,y + 24,-1,delete_button)	//add delete button made

attached_to_A.word_attached_to = self.id;								//set the id of the object it is attached to
attached_to_B.word_attached_to = self.id;								//set the id of the object it is attached to
load_word_list();														//update the list of words 

on_page = floor(word_number/15)
//text_to_show = "asdfasdfasdf";														//text to show for the buttons
//text_to_show = string(string(word_number) + " | x:" + string(self.x) + " | y:" +string(self.y) + " | P:" + string(on_page));										//test value

/// @description edit url list
function edit_url_ini_list(argument0) {
	pop_up_input=argument0;

	if pop_up_input != ""
	          {
	          //if it is a number to delete a url
	          if is_real(pop_up_input){
	              //jump to that array number and delete it
	              //run through the array and clean it up moving urls up if one is deleted
	          }
	          if string_length(pop_up_input)>2{
	            //add to the array
	            //check for empty spots
	            for (b=0;b<array_length_1d(grabber.url_list); b++){
	                if string_length(grabber.url_list[b])<3{
	                    grabber.url_list[b] = pop_up_input;
	                    global.Name = pop_up_input;
	                    script_execute(save_url);
	                    exit;
                    
	                }
	            }
            
	            grabber.url_list[array_length_1d(grabber.url_list)] = pop_up_input
	            global.Name = pop_up_input;
            
	          }
	          //delete apon result
	          if (string_length(pop_up_input)=1) | (string_length(pop_up_input)=2){
	            number_from_string= real(string_digits(pop_up_input))
	            if number_from_string <= real(array_length_1d(grabber.url_list)+1){
	                grabber.url_list[pop_up_input]="";
	            }
	          }
		
	    script_execute(save_url);
	}
}

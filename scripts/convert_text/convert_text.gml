/// @description convert a string of text to  multiple lines
function convert_text(argument0,argument1,argument2){
	var text_to_convert = argument0;								//string to be converted
	var text_working_width = argument1*1.65;								//max width in pixels that can be used
	var text_font = argument2;										//font that is being used
	
	var text_font_size = font_get_size(text_font)					//actual size in pixels the font characters are
	var text_max_length =floor(text_working_width / text_font_size);//max amount of characters that a single string can have
	var return_text="";												//text to be sent back
	var text_total_length = string_length(text_to_convert);			//length in characters 
	var test_text ="";												//text that is used in the loop
	var test_text_char_at = 0;										//char counter that will meet up to the max
	
	
	for(i=1;i<text_total_length;i++){																			//loop until end of string 
		if (test_text_char_at = text_max_length){																//add in a line break if the text is at max
			test_text = test_text +"\n";
			test_text_char_at = 0
		}
		if (string_char_at(text_to_convert,i) != "#") and (string_char_at(text_to_convert,i) != "\n"){			//if it is not a sign of a new line
			test_text = test_text + string_char_at(text_to_convert,i)
			test_text_char_at++
		}
		else{																									//if it is a sign of a new line
			test_text = test_text +"\n";
			test_text_char_at = 0
			
		}
		
		
	}
	
	
	return_text = test_text;
	
 return (return_text);
}
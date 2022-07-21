/// @description setup timer to repeat and load filters
if timer_minutes>0{
    alarm[0]=timer_minutes_constant*timer_minutes
    }
if timer_minutes<=0{
    alarm[0]=timer_minutes_constant*1;
    }


//ascii character loaded
/*
ascii_characters[0]="";
ascii_characters_on=0;
if file_exists("ascii_characters.txt") =true {
	ascii_file = file_text_open_read("ascii_characters.txt");
	while (file_text_eof(ascii_file)=false)
	    {
	    ascii_characters[ascii_characters_on++] = file_text_readln(ascii_file);
	    }
	file_text_close(ascii_file)	
}
*/

/// @description set varible that holds the string
pop_up_text = "";
input_text = "";
input_text_shown= "";
pop_up_type = 0;
pop_up_string="";
c="";
scroll_wheel_spot = 0;
blink_cursor = 0;

//url popup
if pop_up_type = 0{
    for (c=0;c<array_length_1d(grabber.url_list); c++){
     pop_up_string= pop_up_string+ "["+string(c)+"]"+grabber.url_list[c,0]+"#"+"ERRORS: "+grabber.url_list[c,1]+"#";
     }
    pop_up_text =("----------------------------------"+" URL LISTS "+"----------------------------------"+"#"+"To remove a [URL] type in the number infront of the url then hit ok"+"#"+"To add just type in the [URL] and click ok"+"#"+"Must include the FULL URL with the http, https, and www "+"----------------------------------------------------------------------------------- "+""+string(pop_up_string));
}

alarm[0] = room_speed*.25;
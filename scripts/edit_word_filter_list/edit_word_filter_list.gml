/// @description edit words list

function edit_word_filter_list(argument0) {
	pop_up_input=argument0;


	if pop_up_input != ""
	   {
	   /*clean up the custom array*/
	   
   
	 for (e=0;e<array_length_1d(grabber.ignore_list); e++){
	     if string_pos(" ", grabber.ignore_list[e])=true {
	         grabber.ignore_list[e] = "";
	         }
	     }
		 
		 if string_digits(pop_up_input) != ""{
			number_from_result = real(string_digits(pop_up_input));
		 }
		 else {
			number_from_result = 0;
		 }
			 
		character_from_result = string(pop_up_input)
   
	   if number_from_result>0{
	     //check if the number is less than 12
	     if number_from_result<15{
	         switch (number_from_result){
	         case 1:
	             if (grabber.russian_on=0){
	                 grabber.russian_on=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.russian_on=0
	                 save_ignore_list();
	                 }
	             break;
	         case 2:
	             if (grabber.china_on=0){
	                 grabber.china_on=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.china_on=0
	                 save_ignore_list();
	                 }
	             break;
	         case 3:
	             if (grabber.japan_on=0){
	                 grabber.japan_on=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.japan_on=0
	                 save_ignore_list();
	                 }
	             break;
	         case 4:
	             if (grabber.countries_on=0){
	                 grabber.countries_on=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.countries_on=0
	                 save_ignore_list();
	                 }
	             break;
	         case 5:
	             if (grabber.porn_on=0){
	                 grabber.porn_on=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.porn_on=0
	                 save_ignore_list();
	                 }
	             break;
	         case 6:
	             if (grabber.not_1080p=0){
	                 grabber.not_1080p=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.not_1080p=0
	                 save_ignore_list();
	                 }
	             break;
	         case 7:
	             if (grabber.not_webrip=0){
	                 grabber.not_webrip=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.not_webrip=0
	                 save_ignore_list();
	                 }
	             break;
	         case 8:
	             if (grabber.not_720p=0){
	                 grabber.not_720p=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.not_720p=0
	                 save_ignore_list();
	                 }
	             break;
	         case 9:
	             if (grabber.not_480p=0){
	                 grabber.not_480p=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.not_480p=0
	                 save_ignore_list();
	                 }
	             break;
	         case 10:
	             if (grabber.no_vids_over_1year=0){
	                 grabber.no_vids_over_1year=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.no_vids_over_1year=0
	                 save_ignore_list();
	                 }
	             break;
	         case 11:
	             if (grabber.no_vids_over_5year=0){
	                 grabber.no_vids_over_5year=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.no_vids_over_5year=0
	                 save_ignore_list();
	                 }
	             break;
	         case 12:
	             if (grabber.no_vids_over_20year=0){
	                 grabber.no_vids_over_20year=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.no_vids_over_20year=0
	                 save_ignore_list();
	                 }
	             break;
	         case 13:
	             if (grabber.only_movies = 0){
	                 grabber.only_movies=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.only_movies=0
	                 save_ignore_list();
	                 }
	             break;
	         case 14:
	             if (grabber.episodes_on = 0){
	                 grabber.episodes_on=1
	                 save_ignore_list();
	                 }
	             else{
	                 grabber.episodes_on=0
	                 save_ignore_list();
	                 }
	             break;
         
	         //save_ignore_list();     
	         }
         
	         save_ignore_list();
	         exit;
	     }
	     if number_from_result >= 15{
	         //delete the list of custom
	         if real(array_length_1d(grabber.ignore_list)+15) >= number_from_result{
	             grabber.ignore_list[number_from_result-15] = "";
	             save_ignore_list();
	             exit;
	         }
	         //add if not
	         grabber.ignore_list[array_length_1d(grabber.ignore_list)] = number_from_result;
	         save_ignore_list();
	         exit               
	         }
     
	     }
	     //add words
	     if character_from_result !=""{
	     for (e=0;e<array_length_1d(grabber.ignore_list); e++){
	         if (string_length(grabber.ignore_list[e])) <1{
	             grabber.ignore_list[e] = character_from_result;
	             save_ignore_list();
	             exit;
	             }
         
	         }
	     //add if not
	     grabber.ignore_list[array_length_1d(grabber.ignore_list)] = character_from_result;
	     save_ignore_list();               
	     }
	   }
}

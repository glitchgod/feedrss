function custom_filter_apllier(){
//0 RUSSIAN
//1 Simple Chinese Characters
//2 common phrases for None English Dub
//3 common Porn Phrases
//4 1080 in title
//5 Webrip in title
//6 720p in title
//7 480p in title
//8 4k and 8k in title
//9 videos with phrases like HDCAM
//10 (cmd setup) Double check filtering with tor engine
//11 Filter out episodes from titles
//12 "Movie age limiter by years
//13 Movie no older than [x] Years
//14 Metacritic min score
//15 No Movie with a score below [x]
//16 Imdb rating min score
//17 No Movie with a score below [x] 
//18 Use custom word filters
//19 Common japanese characters


//russian
	if (grabber.custom_flter_options[0] = 1){		//check for Russian common letters
		array_push(grabber.ignore_list,"Б"); 
		array_push(grabber.ignore_list,"б");
		array_push(grabber.ignore_list,"Г"); 
		array_push(grabber.ignore_list,"г");
		array_push(grabber.ignore_list,"Д"); 
		array_push(grabber.ignore_list,"д");
		array_push(grabber.ignore_list,"Ё"); 
		array_push(grabber.ignore_list,"ё");
		array_push(grabber.ignore_list,"Ж");
		array_push(grabber.ignore_list,"ж");
		array_push(grabber.ignore_list,"З");
		array_push(grabber.ignore_list,"з");
		array_push(grabber.ignore_list,"И");
		array_push(grabber.ignore_list,"и");
		array_push(grabber.ignore_list,"Й");
		array_push(grabber.ignore_list,"й");
		array_push(grabber.ignore_list,"П");
		array_push(grabber.ignore_list,"п");
		array_push(grabber.ignore_list,"Ф"); 
		array_push(grabber.ignore_list,"ф");
		array_push(grabber.ignore_list,"Ц"); 
		array_push(grabber.ignore_list,"ц");
		array_push(grabber.ignore_list,"Ч"); 
		array_push(grabber.ignore_list,"ч");
		array_push(grabber.ignore_list,"Ш");
		array_push(grabber.ignore_list,"ш");
		array_push(grabber.ignore_list,"Щ");
		array_push(grabber.ignore_list,"щ");
		array_push(grabber.ignore_list,"Ъ");
		array_push(grabber.ignore_list,"ъ");
		array_push(grabber.ignore_list,"Ы");
		array_push(grabber.ignore_list,"ы");
		array_push(grabber.ignore_list,"Ь");
		array_push(grabber.ignore_list,"ь");
		array_push(grabber.ignore_list,"Э");
		array_push(grabber.ignore_list,"э");
		array_push(grabber.ignore_list,"Ю"); 
		array_push(grabber.ignore_list,"ю");
		array_push(grabber.ignore_list,"Я"); 
		array_push(grabber.ignore_list,"я");
		array_push(grabber.ignore_list,"й");
	}

//chinese
	if (grabber.custom_flter_options[1] = 1){		//check for Simple Chinese Characters
		if file_exists("common_chinese_characters.txt") =true {
			var chinese_file = file_text_open_read("common_chinese_characters.txt");
			var chinese_whole = file_text_read_string(chinese_file);
			for (var cc = 0;cc<string_length(chinese_whole);cc++){
				array_push(grabber.ignore_list, string_char_at(chinese_whole,cc+1));
			}
			file_text_close(chinese_file)
	
		}
	}
	
//Japan
	if (grabber.custom_flter_options[19] = 1){		//check for Simple Japan Characters
		if file_exists("common_Hiragana_characters.txt") =true {
			var Hiragana_file = file_text_open_read("common_Hiragana_characters.txt");
			var Hiragana_whole = file_text_read_string(Hiragana_file);
			for (var dd = 0;dd<string_length(Hiragana_whole);dd++){
				array_push(grabber.ignore_list, string_char_at(Hiragana_whole,dd+1));
			}
			file_text_close(Hiragana_file)
		}
		if file_exists("common_Kanji_characters.txt") =true {
			var Kanji_file = file_text_open_read("common_Hiragana_characters.txt");
			var Kanji_whole = file_text_read_string(Kanji_file);
			for (var ee = 0;ee<string_length(Kanji_whole);ee++){
				array_push(grabber.ignore_list, string_char_at(Kanji_whole,ee+1))
			}
			file_text_close(Kanji_file)
		}
	}
	
//non english country phrases
	if (grabber.custom_flter_options[2] = 1){		//check for non english country phrases
		array_push(grabber.ignore_list, "korean");
		array_push(grabber.ignore_list, "korea");
		array_push(grabber.ignore_list, "china");
		array_push(grabber.ignore_list, "chinese");
		array_push(grabber.ignore_list, "Italian");
		array_push(grabber.ignore_list, "Italy");
		array_push(grabber.ignore_list, "German");
		array_push(grabber.ignore_list, "Hindi");
		array_push(grabber.ignore_list, "Spanish");
		array_push(grabber.ignore_list, "Hindi");
		array_push(grabber.ignore_list, "HiNdi");

		array_push(grabber.ignore_list, "VIETNAMESE");
		array_push(grabber.ignore_list, "SPANISH");
		array_push(grabber.ignore_list, "FRE");
		array_push(grabber.ignore_list, ".RUS.");
		array_push(grabber.ignore_list, ".iT.");
		array_push(grabber.ignore_list, "DANISH");
		array_push(grabber.ignore_list, "Bengali");
		array_push(grabber.ignore_list, "ITA");
		array_push(grabber.ignore_list, "DUT");
		array_push(grabber.ignore_list, ".iT.");
	}
	
//common porn phrases
	if (grabber.custom_flter_options[3] = 1){		//check for common porn phrases
		
		array_push(grabber.ignore_list, "sex"); 
		array_push(grabber.ignore_list, "+18");
		array_push(grabber.ignore_list, "+17"); 
		array_push(grabber.ignore_list, "NC17");
		array_push(grabber.ignore_list, "porn"); 
		array_push(grabber.ignore_list, "anal");
		array_push(grabber.ignore_list, "fuck"); 
		array_push(grabber.ignore_list, "fucking");
		array_push(grabber.ignore_list, "Bareback");
		array_push(grabber.ignore_list, "BDSM");
		array_push(grabber.ignore_list, "Blow Job");

		array_push(grabber.ignore_list, "Creampie");
		array_push(grabber.ignore_list, "Cum Shot");
		array_push(grabber.ignore_list, "Throat");
		array_push(grabber.ignore_list, "Facial");
		array_push(grabber.ignore_list, "Orgy");
		array_push(grabber.ignore_list, "xxx");
	}
	
//1080 phrases
	if (grabber.custom_flter_options[4] = 1){		//check for common 1080 phrases
		
	    array_push(grabber.ignore_list, "1080");
	    array_push(grabber.ignore_list, "(1080)");
	    array_push(grabber.ignore_list, "1080p");
	    array_push(grabber.ignore_list, "(1080p)");
	}
	
//webrip phrases
	if (grabber.custom_flter_options[5] = 1){		//check for common webrip phrases
	    array_push(grabber.ignore_list, "webrip");
	    array_push(grabber.ignore_list, "(webrip)");
	}
	
//720 phrases
	if (grabber.custom_flter_options[6] = 1){		//check for common 720 phrases
	     array_push(grabber.ignore_list,"720");
	     array_push(grabber.ignore_list,"(720)");
	     array_push(grabber.ignore_list,"720p");
	     array_push(grabber.ignore_list,"(720p)");
	}
	
//480 phrases
	if (grabber.custom_flter_options[7] = 1){		//check for common 480 phrases
	      array_push(grabber.ignore_list,"480");
	      array_push(grabber.ignore_list,"(480)");
	      array_push(grabber.ignore_list,"480p");
	      array_push(grabber.ignore_list,"(480p)");
	}
	
//4k 8k phrases
	if (grabber.custom_flter_options[8] = 1){		//check for common 4k 8k phrases
	      array_push(grabber.ignore_list,"4k");
	      array_push(grabber.ignore_list,"(4k)");
	      array_push(grabber.ignore_list,"8k");
	      array_push(grabber.ignore_list,"(8k)");
	      array_push(grabber.ignore_list,"2160");
	      array_push(grabber.ignore_list,"(2160)");
	      array_push(grabber.ignore_list,"2160p");
	      array_push(grabber.ignore_list,"(2160p)");
	      array_push(grabber.ignore_list,"4320");
	      array_push(grabber.ignore_list,"(4320)");
	      array_push(grabber.ignore_list,"4320p");
	      array_push(grabber.ignore_list,"(4320p)");
	}
	
//hdcam phrases
	if (grabber.custom_flter_options[9] = 1){		//check for common hdcam phrases
	    array_push(grabber.ignore_list, "(HDCAM)");
	    array_push(grabber.ignore_list, "HDCAM");
	}
	
//double check with tor
	if (grabber.custom_flter_options[10] = 1){		//double check with tor
	}
	
//episode phrases
	if (grabber.custom_flter_options[11] = 1){		//check for common episode phrases
	    array_push(grabber.ignore_list, "S01");
	    array_push(grabber.ignore_list, "S1");
	    array_push(grabber.ignore_list, "S02");
	    array_push(grabber.ignore_list, "S2");
	    array_push(grabber.ignore_list, "S03");
	    array_push(grabber.ignore_list, "S3");
	    array_push(grabber.ignore_list, "S04");
	    array_push(grabber.ignore_list, "S4");
	    array_push(grabber.ignore_list, "S05");
	    array_push(grabber.ignore_list, "S5");
	    array_push(grabber.ignore_list, "S06");
	    array_push(grabber.ignore_list, "S6");
	    array_push(grabber.ignore_list, "S07");
	    array_push(grabber.ignore_list, "S7");
	    array_push(grabber.ignore_list, "S08");
	    array_push(grabber.ignore_list, "S8");
	    array_push(grabber.ignore_list, "S09");
	    array_push(grabber.ignore_list, "S9");
	    array_push(grabber.ignore_list, "S10");
	    array_push(grabber.ignore_list, "S11");
	    array_push(grabber.ignore_list, "S12");
	    array_push(grabber.ignore_list, "S13");
	    array_push(grabber.ignore_list, "S14");
	    array_push(grabber.ignore_list, "S15");
	    array_push(grabber.ignore_list, "S16");
	    array_push(grabber.ignore_list, "S17");
	    array_push(grabber.ignore_list, "S18");
	    array_push(grabber.ignore_list, "S19");
	    array_push(grabber.ignore_list, "S20");
	    array_push(grabber.ignore_list, "S21");
	    array_push(grabber.ignore_list, "S22");
		
		
	    array_push(grabber.ignore_list, "E01");
	    array_push(grabber.ignore_list, "E1");
	    array_push(grabber.ignore_list, "E02");
	    array_push(grabber.ignore_list, "E2");
	    array_push(grabber.ignore_list, "E03");
	    array_push(grabber.ignore_list, "E3");
	    array_push(grabber.ignore_list, "E04");
	    array_push(grabber.ignore_list, "E4");
	    array_push(grabber.ignore_list, "E05");
	    array_push(grabber.ignore_list, "E5");
	    array_push(grabber.ignore_list, "E06");
	    array_push(grabber.ignore_list, "E6");
	    array_push(grabber.ignore_list, "E07");
	    array_push(grabber.ignore_list, "E7");
	    array_push(grabber.ignore_list, "E08");
	    array_push(grabber.ignore_list, "E8");
	    array_push(grabber.ignore_list, "E09");
	    array_push(grabber.ignore_list, "E9");
	    array_push(grabber.ignore_list, "E10");
	    array_push(grabber.ignore_list, "E11");
	    array_push(grabber.ignore_list, "E12");
	    array_push(grabber.ignore_list, "E13");
	    array_push(grabber.ignore_list, "E14");
	    array_push(grabber.ignore_list, "E15");
	    array_push(grabber.ignore_list, "E16");
	    array_push(grabber.ignore_list, "E17");
	    array_push(grabber.ignore_list, "E18");
	    array_push(grabber.ignore_list, "E19");
	    array_push(grabber.ignore_list, "E20");
	    array_push(grabber.ignore_list, "E21");
	    array_push(grabber.ignore_list, "E22");
	}
	
//MOVIE AGE LIMITER
	if (grabber.custom_flter_options[12] = 1){		//MOVIE AGE LIMITER
		for(var f=1;f < 150; f++){
			array_push(grabber.ignore_list, current_year - real( grabber.custom_flter_options[13]) - f)
		}
	}	
	
//metacritic min score
	if (grabber.custom_flter_options[14] = 1){		//metacritic min score
	}
	
//imdb min score
	if (grabber.custom_flter_options[16] = 1){		//imdb min score
	}
	
	
//custom word list 
	if (grabber.custom_flter_options[18] = 1){		//custom word list 
		load_word_list()
	}
	
	
//join both lists into one
	array_copy(grabber.filtered_list,0,grabber.ignore_list,0,array_length(grabber.ignore_list));
	array_copy(grabber.filtered_list,array_length(grabber.filtered_list),grabber.custom_word_list,0,array_length(grabber.custom_word_list));
}
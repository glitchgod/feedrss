/// @description setup timer to repeat
if timer_minutes>0{
    alarm[0]=timer_minutes_constant*timer_minutes
    }
if timer_minutes<=0{
    alarm[0]=timer_minutes_constant*1;
    }
///russian letters
//russian_on=0;

russian_letters[0]="";

russian_letters[0]="Б"; 
russian_letters[1]="б";
russian_letters[2]="Г"; 
russian_letters[3]="г";
russian_letters[4]="Д"; 
russian_letters[5]="д";
russian_letters[6]="Ё"; 
russian_letters[7]="ё";
russian_letters[8]="Ж";
russian_letters[9]="ж";
russian_letters[10]="З";
russian_letters[11]="з";
russian_letters[12]="И";
russian_letters[13]="и";
russian_letters[14]="Й";
russian_letters[15]="й";
russian_letters[16]="П";
russian_letters[17]="п";
russian_letters[18]="Ф"; 
russian_letters[19]="ф";
russian_letters[20]="Ц"; 
russian_letters[21]="ц";
russian_letters[22]="Ч"; 
russian_letters[23]="ч";
russian_letters[24]="Ш";
russian_letters[25]="ш";
russian_letters[26]="Щ";
russian_letters[27]="щ";
russian_letters[28]="Ъ";
russian_letters[29]="ъ";
russian_letters[30]="Ы";
russian_letters[31]="ы";
russian_letters[32]="Ь";
russian_letters[33]="ь";
russian_letters[34]="Э";
russian_letters[35]="э";
russian_letters[36]="Ю"; 
russian_letters[37]="ю";
russian_letters[38]="Я"; 
russian_letters[39]="я";
russian_letters[40]="й";

///china letters
//china_on=0;

china_letters[0]="";
if file_exists("common_chinese_characters.txt") =true {
	chinese_file = file_text_open_read("common_chinese_characters.txt");
	var chinese_whole = file_text_read_string(chinese_file);
	for (cc = 0;cc<string_length(chinese_whole);cc++){
		china_letters[cc]= string_char_at(chinese_whole,cc+1)
	}
	file_text_close(chinese_file)
	
}
///Japan letters
//Japan_on=0;

Japan_letters[0]="";
Japan_letters_on=0
if file_exists("common_Hiragana_characters.txt") =true {
	Hiragana_file = file_text_open_read("common_Hiragana_characters.txt");
	var Hiragana_whole = file_text_read_string(Hiragana_file);
	for (dd = 0;dd<string_length(Hiragana_whole);dd++){
		Japan_letters[dd]= string_char_at(Hiragana_whole,dd+1)
		Japan_letters_on=dd;
	}
	file_text_close(Hiragana_file)
}
	
	
if file_exists("common_Kanji_characters.txt") =true {
	Kanji_file = file_text_open_read("common_Hiragana_characters.txt");
	var Kanji_whole = file_text_read_string(Kanji_file);
	for (ee = Japan_letters_on;ee<string_length(Kanji_whole);ee++){
		Japan_letters[ee]= string_char_at(Kanji_whole,ee+1)
	}
	file_text_close(Kanji_file)
	
	
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

///common countries
//countries_on=0;

countries_term[0]="";

countries_term[0]="korean";
countries_term[1]="korea";
countries_term[2]="china";
countries_term[3]="chinese";
countries_term[4]="Italian";
countries_term[5]="Italy";
countries_term[6]="German";
countries_term[7]="Hindi";
countries_term[8]="Spanish";
countries_term[9]="Hindi";
countries_term[10]="HiNdi";

countries_term[11]="VIETNAMESE";
countries_term[12]="SPANISH";
countries_term[13]="FRE";
countries_term[14]=".RUS.";
countries_term[15]=".iT.";
countries_term[16]="DANISH";
countries_term[17]="Bengali";
countries_term[18]="ITA";
countries_term[19]="DUT";
countries_term[20]=".iT.";

///common porn
//porn_on=0;

porn_terms[0]="";

porn_terms[0]="sex"; 
porn_terms[1]="+18";
porn_terms[2]="+17"; 
porn_terms[3]="NC17";
porn_terms[4]="porn"; 
porn_terms[5]="anal";
porn_terms[6]="fuck"; 
porn_terms[7]="fucking";
porn_terms[8]="Bareback";
porn_terms[9]="BDSM";
porn_terms[10]="Blow Job";

porn_terms[11]="Creampie";
porn_terms[12]="Cum Shot";
porn_terms[13]="Throa";
porn_terms[14]="Facial";
porn_terms[15]="Orgy";
porn_terms[16]="xxx";
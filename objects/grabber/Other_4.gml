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
/*
china_letters[0]="的"; 
china_letters[1]="是";
china_letters[2]="不"; 
china_letters[3]="了";
china_letters[4]="人"; 
china_letters[5]="我";
china_letters[6]="在"; 
china_letters[7]="有";
china_letters[8]="他";
china_letters[9]="这";
china_letters[10]="为";
china_letters[11]="之";
china_letters[12]="大";
china_letters[13]="来";
china_letters[14]="以";
china_letters[15]="个";
china_letters[16]="中";
china_letters[17]="上";
china_letters[18]="们"; 

china_letters[19]="到";
china_letters[20]="说"; 
china_letters[21]="国";
china_letters[22]="和"; 
china_letters[23]="地";
china_letters[24]="也";
china_letters[25]="子";
china_letters[26]="时";
china_letters[27]="道";
china_letters[28]="出";
china_letters[29]="而";
china_letters[30]="要";
china_letters[31]="于";
china_letters[32]="就";
china_letters[33]="下";
china_letters[34]="得";
china_letters[35]="可";
china_letters[36]="你"; 
china_letters[37]="年";
china_letters[38]="生";
 
china_letters[39]="自";
china_letters[40]="会";
china_letters[41]="那";
china_letters[42]="后";
china_letters[43]="能";
china_letters[44]="对";
china_letters[45]="着";
china_letters[46]="事";
china_letters[47]="其";
china_letters[48]="里"; 
china_letters[49]="所";
china_letters[50]="去";
china_letters[51]="行";
china_letters[52]="过";
china_letters[53]="家";
china_letters[54]="十";
china_letters[55]="用";
china_letters[56]="发";
china_letters[57]="天";
china_letters[58]="如"; 

china_letters[59]="ф";
china_letters[60]="З";
china_letters[61]="з";
china_letters[62]="И";
china_letters[63]="и";
china_letters[64]="Й";
china_letters[65]="й";
china_letters[66]="П";
china_letters[67]="п";
china_letters[68]="Ф"; 
china_letters[69]="ф";
china_letters[70]="З";
china_letters[71]="з";
china_letters[72]="И";
china_letters[73]="и";
china_letters[74]="Й";
china_letters[75]="й";
china_letters[76]="П";
china_letters[77]="п";
china_letters[78]="Ф"; 
china_letters[79]="ф";
china_letters[80]="З";
china_letters[81]="з";
china_letters[82]="И";
china_letters[83]="и";
china_letters[84]="Й";
china_letters[85]="й";
china_letters[86]="П";
china_letters[87]="п";
china_letters[88]="Ф"; 
china_letters[89]="ф";
china_letters[90]="З";
china_letters[91]="з";
china_letters[92]="И";
china_letters[93]="и";
china_letters[94]="Й";
china_letters[95]="й";
china_letters[96]="П";
china_letters[97]="п";
china_letters[98]="Ф"; 
china_letters[99]="ф";
china_letters[100]="З";
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
countries_term[7]="Spanish";

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

///common ban words
/*
//not_1080p= 0;
//not_webrip=0;
//not_720p=0;
//not_480p=0;
//no_vids_over_1year=0;
//no_vids_over_5year=0;
//no_vids_over_20year=0;

*/

/* */
///custom ban words
//ignore_list[0]="";

/* */
/*  */

/// @description save_ignore_list
function save_ignore_list() {

	ini_open("/home/ubuntu/.config/feedrss/"+"ignore_list.ini");
	total_ignore_list = real(array_length_1d(grabber.ignore_list));
	ini_write_real("Amount of ignore","Ignore_count",array_length_1d(grabber.ignore_list));

	    ini_write_real("russian_on","russian_on",grabber.russian_on);
	    ini_write_real("china_text","china_on",grabber.china_on);
	    ini_write_real("countries_on","countries_on",grabber.countries_on);
	    ini_write_real("porn_on","porn_on",grabber.porn_on);
	    ini_write_real("not_1080p","not_1080p",grabber.not_1080p);
	    ini_write_real("not_webrip","not_webrip",grabber.not_webrip);
	    ini_write_real("not_720p","not_720p",grabber.not_720p);
	    ini_write_real("not_480p","not_480p",grabber.not_480p);
	    ini_write_real("no_vids_over_1year","no_vids_over_1year",grabber.no_vids_over_1year);
	    ini_write_real("no_vids_over_5year","no_vids_over_5year",grabber.no_vids_over_5year);
	    ini_write_real("no_vids_over_20year","no_vids_over_20year",grabber.no_vids_over_20year);
	    ini_write_real("only_movies","only_movies",grabber.only_movies);
		
	if total_ignore_list>0 {    
	    for (c=0; c<real(total_ignore_list);c++) {
	        ini_write_string("Ignore_list",c,grabber.ignore_list[c]);
	        }
	}
	ini_close(); 




}

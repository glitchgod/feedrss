/// @description save url list
function save_url() {

	ini_open("/home/ubuntu/.config/feedrss/"+"url_list.ini");
	total_urls = real(array_length_1d(grabber.url_list));
	ini_write_real("Amountofurl","Urlcount",array_length_1d(grabber.url_list));
	if total_urls>0 {
	    ini_write_real("Amountofurl","Urlcount",total_urls);
	    for (c=0; c<real(total_urls);c++) {
	        ini_write_string("Amountofurl",c,grabber.url_list[c]);
	        }
	}
	ini_close(); 




}

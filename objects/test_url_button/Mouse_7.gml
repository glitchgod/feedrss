/// @description Insert description here
// You can write your code in this editor
clicked_on = 0;


if can_use = 1 {
	current_page = website_shower.website_page_on;					//get the current page that is being worked on
	use_site_number = line_on + (3 * current_page) - 1;				//get the entry number in the list of sites note: -1 due to arrays start at 0
	if use_site_number <= array_length(website_shower.edit_list) {	//if the entry exists
		delay_start = current_time ;								//time of the click
		repeat (2){													//grab the data multiple times
			current_page = website_shower.website_page_on;			//get the current page that is being worked on
			if (array_length(website_shower.edit_list[use_site_number]) > 1) {	//check to see if the address is there
				use_site =  website_shower.edit_list[use_site_number,1]	;//what website it is in the website_shower list note: 1 due to array holding the links position
				http_request_number = http_get(use_site);				//call the http request
				
			}
			if (array_length(website_shower.edit_list[use_site_number]) <= 1) {	//if the address is not there
				http_request_number = -999999;				//call the http request
				
			}
			if http_request_number < 0 {
				status_number = 9999;								//set it to an invalid number 
				website_shower.details_info =  convert_text(string(http_code_check(status_number)),250,font_medium);	//insert the delay text
	
			}
		}
	}
}
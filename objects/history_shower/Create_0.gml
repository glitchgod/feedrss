/// @description Insert description here
// You can write your code in this editor
history_loaded[0,6] = "";					//giant variable to stor all the loaded history in the file
page_on = 0;								//current page on
shift_buttons = 0;							//0 | buttons stay at spawned x  1 | buttons shift x to hide and details panel shows up
search_phrase = "";							//what phrase to search for
search_array[0,6] = "";						//array that will be used to display search results
search_on = 0;								//0 |show the normal list  1 | hide the normal list
total_downed = 0;							//keeping track of the amount downloaded
total_ignored = 0;							//keeping track of the amount ignored
search_downed = 0;							//keeping track of the amount search downloaded
search_ignored = 0;							//keeping track of the amount search ignored

load_downloaded_list()						//load the buttons
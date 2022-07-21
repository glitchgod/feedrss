/// @description Insert description here
// You can write your code in this editor
clicked_on = 0;

grabber.save_file_location="";
ini_open(string(working_directory)+"tool_stats.ini")
ini_write_string("stats","save_file_location","");
ini_close(); 

if instance_exists(pop_up)=false
{
	///increase time
	grabber.timer_minutes = grabber.timer_minutes+ 10;
	//update file stats
	ini_open(string(working_directory)+"tool_stats.ini");
	ini_write_real("settings","minutes",grabber.timer_minutes);
	ini_close(); 

}

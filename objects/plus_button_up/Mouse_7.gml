if instance_exists(pop_up)=false
{
	///increase time
	grabber.timer_minutes++;
	//update file stats
	ini_open(string(working_directory)+"tool_stats.ini");
	ini_write_real("settings","minutes",grabber.timer_minutes);
	ini_close(); 
}

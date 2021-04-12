var __b__;
__b__ = action_if_number(pop_up, 0, 0);
if __b__
{
	///increase time
	grabber.timer_minutes++;
	//update file stats
	ini_open(string(working_directory)+"tool_stats.ini");
	ini_write_real("settings","minutes",grabber.timer_minutes);
	ini_close(); 
}

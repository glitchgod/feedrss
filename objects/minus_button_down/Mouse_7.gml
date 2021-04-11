var __b__;
__b__ = action_if_number(pop_up, 0, 0);
if __b__
{
///decrease time
if grabber.timer_minutes>=2{
    grabber.timer_minutes--;
    //update file stats
    if file_exists("tool_stats.ini"){
        tool_stats_file = ini_open("tool_stats.ini");
        ini_write_real("settings","minutes",grabber.timer_minutes);
        ini_close(); 
    
    }
}

}

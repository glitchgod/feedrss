///update timer_live
var timer_live_inprogress = alarm[0]/room_speed

//seconds
if timer_live_inprogress<60{
    timer_live = string(floor(timer_live_inprogress)) + " seconds";
}

//minutes
if timer_live_inprogress>=60{
    var timer_live_inprogress_mins = floor(timer_live_inprogress/60)
    var timer_live_inprogress_secs = floor(timer_live_inprogress-(timer_live_inprogress_mins*60));
    timer_live = string(timer_live_inprogress_mins)+ " mins  " +string(timer_live_inprogress_secs)+ "secs";
}

//run the check for updates
if (current_hour = real(hour_check)+12 =true) && (real(current_minute)=0) && (real(current_second)=0) && is_update=0{
	hour_check=current_hour
	github_grab_id = http_get("https://github.com/glitchgod/feedrss/blob/main/README.md")
}
//compare version infor
if (version_check != "")&& (is_update=0){
	if string((version_check) = string(version_current)) = false{
		is_update=1;
		instance_activate_object(update_button);
	}
}
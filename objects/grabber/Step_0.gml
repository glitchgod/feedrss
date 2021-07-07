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
	grabber.github_grab_id = http_get("https://github.com/glitchgod/feedrss/blob/main/README.md")
}
//compare version infor
if (grabber.version_check != "")&& (is_update=0){
	if string((grabber.version_check) = string(version_current)) = false{
		is_update=1;
		instance_activate_object(update_button);
	}
}

//check the status if the download is happening and handle it accordingly
//if (is_array(global.url_1_response)=true) and (array_length_1d(global.url_1_response)>0){
if (array_length_1d(global.url_1_response)>0){
	//if (grabber.multi_url_pull_at>=0 and grabber.multi_url_pull_at<real(array_length_1d(global.url_1_response))-1) and (array_length_1d(global.url_1_response)>0){
	if (grabber.multi_url_pull_at>real(array_length_1d(global.url_1_response))-1) {// and (array_length_1d(global.url_1_response)>0){
		//grabber.currently_downloading=0;
		//grabber.multi_url_pull_at= -1;
	}
}

if (global.url_1_response="") or (grabber.multi_url_pull_at>=real(array_length_1d(global.url_1_response))-1){
		grabber.currently_downloading=0;
}
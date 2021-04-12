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
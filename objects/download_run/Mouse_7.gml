var __b__;
__b__ = action_if_number(pop_up, 0, 0);
if __b__
{
	if grabber.currently_downloading=0 and alarm[0]<=0{
	///manualy download from the list
	grabber.alarm[0]=1;
	grabber.last_parse_amount=0
	//delay
	alarm[0]=(room_speed*10)
	grabber.currently_downloading=1
	}

}

if instance_exists(pop_up)=false
{
	if grabber.currently_downloading=0 and alarm[0]<=0{
	///manualy download from the list
	grabber.alarm[0]=1;
	grabber.last_parse_amount=0
	//delay
	alarm[0]=(room_speed*10)
	grabber.currently_downloading=1
	//reset counter	
	grabber.multi_url_pull_at=0;
	}

}

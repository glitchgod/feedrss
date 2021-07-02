if instance_exists(pop_up)=false
{
	if grabber.currently_downloading=0{
	///manualy download from the list
	grabber.last_parse_amount=0
	//delay
	grabber.alarm[0]=1;
	grabber.currently_downloading=1
	//reset counter	
	grabber.multi_url_pull_at=0;
	}

}

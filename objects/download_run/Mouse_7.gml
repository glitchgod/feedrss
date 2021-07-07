if (instance_exists(pop_up)=false) and ((grabber.Url_count)>0) and (download_run.alarm[0]<=0){
	
	if (grabber.currently_downloading=0) and ((grabber.Url_count)>0){
	///manualy download from the list
	grabber.last_parse_amount=0
	//delay
	grabber.alarm[0]=1;
	download_run.alarm[0]=5;
	grabber.currently_downloading=1
	//reset counter	
	grabber.multi_url_pull_at=0;
	//reset amounts seen and downloaded
	grabber.last_download_amount=0 //reset download count
	grabber.last_parse_amount=0//reset the parse count		
	//set up download helper
	in_progress_download=0
	
	}

}

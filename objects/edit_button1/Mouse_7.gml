/// @description edit website source list
if (instance_exists(pop_up)=false) and (grabber.currently_downloading=0){
///refresh list	

//load url list file
if file_exists(string(working_directory)+"url_list.ini")=true{
    ini_open(string(working_directory)+"url_list.ini");
	//clear out past data in runnning and load the file
	grabber.Url_count= -1;
	grabber.url_list = -1;
    grabber.Url_count=ini_read_real("Amountofurl","Urlcount",0);
	for (rr=0; rr<real(grabber.Url_count);rr++) {
	    grabber.url_list[rr,0] = ini_read_string("Amountofurl",rr,-1);
		grabber.url_list[rr,1] = ini_read_string("Amountofurl",string(rr)+string("_issue"),"None");
		
	    }
	ini_close(); 
}
	
///edit the list

var pop = instance_create(x,y,pop_up);
pop.pop_up_type =0

}

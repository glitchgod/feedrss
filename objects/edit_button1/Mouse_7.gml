/// @description edit website source list
if instance_exists(pop_up)=false
{
///refresh list	

//load url list file
if file_exists(string(working_directory)+"url_list.ini")=true{
    ini_open(string(working_directory)+"url_list.ini");
    grabber.Url_count=ini_read_real("Amountofurl","Urlcount",0);
	for (r=0; r<real(grabber.Url_count);r++) {
	    grabber.url_list[r,0] = ini_read_string("Amountofurl",r,-1);
		grabber.url_list[r,1] = ini_read_string("Amountofurl",string(r)+string("_issue"),"None");
		
	    }
	ini_close(); 
}
	
///edit the list

var pop = instance_create(x,y,pop_up);
pop.pop_up_type =0

}

room_goto(save_room);
/*
if (instance_exists(pop_up)=false) and (grabber.currently_downloading=0){

//Popup that edits the list
pop_up_string ="";

var spacer = "#------------------------------------------------------------------------------------# "; 

//create popup
var pop = instance_create_depth(x,y,0,pop_up);
var see_directory = string(grabber.save_file_location);
if string_length(see_directory)<=2{
	see_directory = "[Not Set Yet / Not Set Properly]"
}
pop.pop_up_type =2

pop.pop_up_text=string(string("This is the defualt directory that the files downloaded and program files will be saved to:#")+string("Ubuntu (Linux): Files are stored in the:")+"#"+string("/home/.config/feedrss/")+"#"+string("where 'home' is the users home directory - /home/<username>")+spacer+string("This is the CUSTOM directory that you made so files downloaded and program files will be saved to:#")+string(see_directory)+spacer+string("If you wish to overwrite old the directory. Just enter the new full directory with no spaces or shortcuts such as ~. Please write it out fully!##Or type [ resetdirectory ] in order to reset the download file location (dont include [ ]  )."));

}

if instance_exists(pop_up)=false
{
//Popup that edits the list
pop_up_string ="";

//var spacer = "#------------------------------------------------------------------------------------# "; 

//create popup
var pop = instance_create_depth(x,y,0,pop_up);
pop.pop_up_type =4
//History lister
/*
history[0,0]="Fixed Name";
history[0,1]="Link:";
history[0,2]="filtered/old,New";
history[0,3]="Source From:";
history_at=1;
*/
pop.pop_up_text=string(grabber.history[0,0])+"#"+string(grabber.history[0,1])+"#"+string(grabber.history[0,2])+"#"+string(grabber.history[0,3])+"#"+"-----------------------------------"+" RSS LIST "+"-----------------------------------"+"#";
for (aa=0;aa < array_length(grabber.history); ++aa;){
	pop.pop_up_text=string(pop.pop_up_text)+string(string("Fixed Name: ")+string(grabber.history[aa,0])+"#"+string(string("Link: ")+grabber.history[aa,1])+"#"+string(string("Filtered or Grabbed: ")+grabber.history[aa,2])+"#"+string(string("Source From: ")+grabber.history[aa,3])+"##")
}

}

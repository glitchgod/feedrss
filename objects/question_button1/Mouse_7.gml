var __b__;
__b__ = action_if_number(pop_up, 0, 0);
if __b__
{
//Popup that edits the list
pop_up_string ="";

var spacer = "#------------------------------------------------------------------------------------# "; 

//create popup
var pop = instance_create(x,y,pop_up);
pop.pop_up_type =3
pop.pop_up_text=string("This program is made to be a simple version of some other programs that have evolved to go beyond simply managing torrent downloads.")+string(spacer)+string("The save location of settings and options cant be changed due to the method the program is written in.#Ubuntu (Linux): Files are stored in the Home/.config/feedrss where 'Home' is the users home directory - /home/<username>"+spacer+string("The current settings is in:"+"#"+working_directory)+spacer+string("Some websites have call request limits and thus I advise that the timer be increased to either at least 30mins or even 60mins"+spacer+string("This program has been shown to run at start at 37mb of memory at idle and increases on average of 1-3mb perwebsite.")+spacer+string("All code is custom and as I could not find a way to simply code a MAGNET decoder without external tools.#MAGNET BASED LINKS WILL NOT BE PROCESSED CORRECTLY")+spacer+string("The folder button allows you to set a custom location for where to save the torrent files. This will not change where settings are saved")+spacer+string("The plus and minus buttons change the timer that pulls the website data.#++ adds 10 mins -- minus 10 minutes#+ adds 1 minute - minus 1 minute")+spacer+string("The pencil button edits the url list or the filter words list based on what is next to it.")+spacer+string("The max amount of torrents to be pulled (not downloaded but pulled, filtered, and then downloaded) is set to 100 each url due to memory size required to store infinite sized rss feeds .")+spacer));

}

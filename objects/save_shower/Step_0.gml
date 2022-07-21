/// @description Insert description here
// You can write your code in this editor


var see_directory = string(save_test_location);
if string_length(see_directory)<=2{
	see_directory = "     [Not Set Yet / Not Set Properly]"
}

var text1 =string("This is the location that the .tor files will be saved to. ");
var text2 =string("Dont forget to set your torrent engine to load from this location.");
var text3 =string("");
var text4 =string("");
var text5 =string("");
var text6 =string("");

//change message based on what is typed in
if (see_directory = "     [Not Set Yet / Not Set Properly]"){						//if is a real location
	var text7 =string("\n \n \n");
	var text8 =string("Custom .tor save directory is:")+ "     " + string(see_directory)+"\n\n Click edit to set a save location or continue to use the defualt\n\n\n";
}
else{
	if save_location_set = 1{													//if is a real location
	var text7 =string("\n \n \n");
	var text8 =string("Custom .tor save directory is set to:")+ "     " + string(see_directory)+"\n\n";
	}
	if save_location_set = 0{													//if is NOT real location
	var text7 =string("\n \n");
	var text8 =string("**********INVALID LOCATION**********\n\n");
	}
}
var text9 =string("Click on [Reset] to set the defualt .tor to save to ' " + string(working_directory) +"'.");


info = "";
info = string(text1)+string(text2)+string(text3)+string(text4)+string(text5)+string(text6)+string(text7)+string(text8)+string(text9);


info = convert_text(info,room_width-(room_width/6),font_small)

//save_location_set = (directory_exists(string(line_with_text.text_to_show)));
/// @description Insert description here
// You can write your code in this editor


var see_directory = string(grabber.save_file_location);

var text1 =string("This is the defualt directory that the files downloaded and program files will be saved to:\n");
var text2 =string("Ubuntu (Linux): Defualt files are stored in the: /home/.config/feedrss/")+"\n";
var text3 =string("where 'home' is the user's home directory - /home/<username>")+"-----------------------------"+"\n";
var text4 =string("Ubuntu (Linux): Settings and data files are stored in the: /home/.config/feedrss/")+"\n";;
var text5 =string("CUSTOM .tor save directory:")+string(see_directory);
var text6 =" Just enter the new full directory with no spaces or shortcuts such as ~. Please write it out fully!! Or type [ resetdirectory ] in order to reset the download file location (dont include [ ]  )";


info = ""
info = string(text1)+string(text2)+string(text3)+string(text4)+string(text5)+string(text6);

info = convert_text(info,room_width-(room_width/6),font_small)
testlines =0;
testlines = string_count("\n",info);
info = info + "\n"+ "\n"+ string(testlines);


if string_length(see_directory)<=2{
	see_directory = "[Not Set Yet / Not Set Properly]"
}


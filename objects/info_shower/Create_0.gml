/// @description Insert description here
// You can write your code in this editor
info = "";					//setup info to beshown
info_warning = "";			//warning at the start of every info
page_on = 0;				//set up page on 
page_on = 1;				//set the actaul start page to 1
page_count = 0;				//set up page system
page_count = 7;				//set the max page 

page_1_text="";				//setup text for page 1
page_2_text="";				//setup text for page 2
page_3_text="";				//setup text for page 3
page_4_text="";				//setup text for page 4
page_5_text="";				//setup text for page 5
page_6_text="";				//setup text for page 6
page_7_text="";				//setup text for page 7

info_warning = "This program is souly designed with no warranty or anything of the kind when you use this program.\n\n\n ";

//page_1_text = string(info_warning) + "(=) At this time you are using version " + string(grabber.version_current) + " and is FREE to use and free to download from github.";				//actual text for page 1
page_1_text = string(info_warning) + "(=) At this time you are using version " + string("2.0.0") + " and is FREE to use and free to download from github.";				//actual text for page 1
page_2_text = string(info_warning) + "(=) The whole point of this program is to take multiple RSS feeds and add premade and custom filters to them, and by doing so allowing you to be able to set what does and doesn’t get grabbed to be processed! This in no ways replaces torrent engines but instead allows for some additional options that most engines do not support or require additional modifications to do. This program is designed to be low ram and have a low footprint for all functions that it uses.\n ";				//actual text for page 2
page_3_text = string(info_warning) + "(=) On the home screen on the left is the details about when the next scheduled data pull is, issues that came up from the last update, time it was updated, TOTAL unfiltered tors found, and processed tors (doesn’t mean downloaded). On the right side is the schedule modifier at the top with the single – taking away a minute, the – taking away 10minutes, the + adding 1 minute, and the ++ adding on 10 minutes. NOTE: Setting the time lower than the current set timer will not speed up the timer.\n ";				//actual text for page 3
page_4_text = string(info_warning) + "(=) At the bottom is the info button that brings you to this page, the history button that will allow you to inspect the last grab and previous ones, the computer button leads you to setting up the save location, and the normally invisible button beside that will appear when there is an update. \n ";				//actual text for page 4
page_5_text = string(info_warning) + "(=) Clicking on the pencil next to the “Website List -- >” will take you to a page that allows you to set up, edit, and see the status of the website sources that you provide. On this page you will be notified if there is an issue with the website in the response of error codes such as error404. \n ";				//actual text for page 5
page_6_text = string(info_warning) + "(=) Clicking on the “Filter Settings -- >” pencil will take you to the main section of what makes this so special. In their you will find settings that are easy to under stand along with a section that will allow for custom words, symbols, or characters. \n ";				//actual text for page 6
page_7_text = string(info_warning) + "(=) For advance setup please refer to the github page where it explains how to do an advance setup.";				//actual text for page 7
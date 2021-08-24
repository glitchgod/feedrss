function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // grabber
	global.__objectDepths[1] = 0; // plus_button_up
	global.__objectDepths[2] = 0; // plus_plus_button_up
	global.__objectDepths[3] = 0; // minus_button_down
	global.__objectDepths[4] = 0; // minus_minus_button_down
	global.__objectDepths[5] = 0; // timer_buttons
	global.__objectDepths[6] = 0; // lines
	global.__objectDepths[7] = 0; // edit_website_buttons
	global.__objectDepths[8] = 0; // edit_button1
	global.__objectDepths[9] = 0; // edit_word_list_buttons
	global.__objectDepths[10] = 0; // edit_button2
	global.__objectDepths[11] = 0; // download_run
	global.__objectDepths[12] = -2; // pop_up


	global.__objectNames[0] = "grabber";
	global.__objectNames[1] = "plus_button_up";
	global.__objectNames[2] = "plus_plus_button_up";
	global.__objectNames[3] = "minus_button_down";
	global.__objectNames[4] = "minus_minus_button_down";
	global.__objectNames[5] = "timer_buttons";
	global.__objectNames[6] = "lines";
	global.__objectNames[7] = "edit_website_buttons";
	global.__objectNames[8] = "edit_button1";
	global.__objectNames[9] = "edit_word_list_buttons";
	global.__objectNames[10] = "edit_button2";
	global.__objectNames[11] = "download_run";
	global.__objectNames[12] = "pop_up";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}

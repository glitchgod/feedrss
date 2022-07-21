///go to the info room
if (instance_exists(page_tracker) = true){
	instance_destroy(page_tracker);
}

room_goto(filter_room);
clicked_on = 0;
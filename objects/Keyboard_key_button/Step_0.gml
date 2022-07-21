/// @description Insert description here
// You can write your code in this editor
if (instance_exists(keyboard_spawner) = true){
	
	switch (keyboard_spawner.follow_mouse) {	//when to move the buttons
		case 0: 
		break;
		case 1:
			x =	 keyboard_spawner.x + disatance_to_move_x;
			y =  keyboard_spawner.y + disatance_to_move_y;
		break;
	}
	
	
	switch (keyboard_spawner.text_shifted){		//when to change the text based on shift
		case 0:
			if (string(this_key) = "{") {
				this_key = "["
			}
			if (string(this_key) = "}") {
				this_key = "]"
			}
			if (string(this_key) = "|") {
				this_key = "\\"
			}
			if (string(this_key) = ":") {
				this_key = ";"
			}
			if (string(this_key) = "\"") {
				this_key = "'"
			}
			if (string(this_key) = "<") {
				this_key = ","
			}
			if (string(this_key) = ">") {
				this_key = "."
			}
			if (string(this_key) = "?") {
				this_key = "/"
			}
			if (string(this_key) = "~") {
				this_key = "`"
			}
			if (string(this_key) = "!") {
				this_key = "1"
			}
			if (string(this_key) = "@") {
				this_key = "2"
			}
			if (string(this_key) = "#") {
				this_key = "3"
			}
			if (string(this_key) = "$") {
				this_key = "4"
			}
			if (string(this_key) = "%") {
				this_key = "5"
			}
			if (string(this_key) = "^") {
				this_key = "6"
			}
			if (string(this_key) = "&") {
				this_key = "7"
			}
			if (string(this_key) = "*") {
				this_key = "8"
			}
			if (string(this_key) = "(") {
				this_key = "9"
			}
			if (string(this_key) = ")") {
				this_key = "0"
			}
			if (string(this_key) = "_") {
				this_key = "-"
			}
			if (string(this_key) = "+") {
				this_key = "="
			}
		break;	
		case 1:
			if (string(this_key) = "["){
				this_key = "{"
			}
			if (string(this_key) = "]"){
				this_key = "}"
			}
			if (string(this_key) = "\\"){
				this_key = "|"
			}
			if (string(this_key) = ";"){
				this_key = ":"
			}
			if (string(this_key) = "'"){
				this_key = "\""
			}
			if (string(this_key) = ","){
				this_key = "<"
			}
			if (string(this_key) = "."){
				this_key = ">"
			}
			if (string(this_key) = "/"){
				this_key = "?"
			}
			if (string(this_key) = "`"){
				this_key = "~"
			}
			if (string(this_key) = "1"){
				this_key = "!"
			}
			if (string(this_key) = "2"){
				this_key = "@"
			}
			if (string(this_key) = "3"){
				this_key = "#"
			}
			if (string(this_key) = "4"){
				this_key = "$"
			}
			if (string(this_key) = "5"){
				this_key = "%"
			}
			if (string(this_key) = "6"){
				this_key = "^"
			}
			if (string(this_key) = "7"){
				this_key = "&"
			}
			if (string(this_key) = "8"){
				this_key = "*"
			}
			if (string(this_key) = "9"){
				this_key = "("
			}
			if (string(this_key) = "0"){
				this_key = ")"
			}
			if (string(this_key) = "-"){
				this_key = "_"
			}
			if (string(this_key) = "="){
				this_key = "+"
			}
		break;
	}
	
	
	
	
	
	
	
	
}

if (instance_exists(keyboard_spawner) = false) {
	instance_destroy(self)
}


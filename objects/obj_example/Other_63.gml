var dialog = ds_map_find_value(async_load, "id");
var status = ds_map_find_value(async_load, "status");
var number = ds_map_find_value(async_load, "value");
var result = ds_map_find_value(async_load, "result");

if (ret == dialog) {
  if (!is_undefined(status)) {
	if (!is_undefined(number)) {
      show_message(string(number));
    } else if (!is_undefined(result) && result != "") {
      show_message(string(result));
    } else if (is_undefined(result)) {
      show_message(string(status));
	}
	alarm[0] = 2;
  }
}
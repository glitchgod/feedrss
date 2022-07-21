// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function update_downloaded_list(){
	if (file_exists(string(working_directory)+"torrents_downloaded.txt") =true){
		file_delete(string(working_directory)+"torrents_downloaded.txt")		//delete old file
		
		var torrent_file = file_text_open_write(string(working_directory)+"torrents_downloaded.txt");			//open the file to be written
		for(i = 0; i < array_length(history_shower.history_loaded);i++){
			file_text_write_string(torrent_file, history_shower.history_loaded[i,0]);				//write the name
			file_text_writeln(torrent_file);														//jump to next line
			file_text_write_string(torrent_file, history_shower.history_loaded[i,1]);				//write the link
			file_text_writeln(torrent_file);														//jump to next line
			file_text_write_string(torrent_file, history_shower.history_loaded[i,2]);				//write the date pulled
			file_text_writeln(torrent_file);														//jump to next line
			file_text_write_string(torrent_file, history_shower.history_loaded[i,3]);				//write the category
			file_text_writeln(torrent_file);														//jump to next line
			file_text_write_string(torrent_file, history_shower.history_loaded[i,4]);				//write the OG name
			file_text_writeln(torrent_file);														//jump to next line
			file_text_write_string(torrent_file, history_shower.history_loaded[i,5]);				//write the Download status
			file_text_writeln(torrent_file);														//jump to next line
			file_text_write_string(torrent_file, history_shower.history_loaded[i,6]);				//write the feed source
			file_text_writeln(torrent_file);														//jump to next line
		}
		file_text_close(torrent_file)
	}
}
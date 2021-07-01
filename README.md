<h1>feedrss : A simple to use rss feed manager for .tor files</h1>
<h3>Story behind why I made this:</h3>
I made this program as I keep having issues with torrent engines updating and breaking their builtin rss feed downloader or the rss feed downloader being spotty on what it grabs. Being fed up with this I made a program in GML (Game Maker Language) that I feel is easy to use and easy to understand.<br>
I would call this something like flexget but very easy plug and play.
<hr>
</hr>
Current Version = 1.1.4 <br>
Built ready to go Linux packages listed in release section.
Built ready to go Windows packages listed in release section.

<h2><strong>What it does different from torrent engines :</strong></h2>
This program doesnt edit, change, or effect your torrent downloader of choice, such as qbittorrent. What this program does is be an alternative to the torrent engines built in rss feed downloader. This is a seperat program and thus no manipulation to torrent engines is needed beyond setting the torrent downloader of choice to load .torrent files from a folder.
<h2><strong>What it can do:</strong></h2>

- Parse public rss feeds and filter them out based on premade groups, premade words, and your custom words.

- Parses up to 100 torrents per rss feed at a time. 

- Uses itorrents.org as a magnet-to-torrent processor. 

- Custom words that a standard English keyboard allows.

- 14 Premade filter rules such as publish date, xxx terms, Chinese characters, Japanese characters, and more detailed in wiki.

- Allows custom download location 

- Custom timer to start the data grab

- A UI that says last time updated, amount last downloaded, amount possible to downloadm, problem websites, and number of custom words.

- A download now button to force a parse of all listed websites

- Only 35mb on idle and only goes up 1-3mb per url added.

- Compare feed to past downloads to improve less duplicates.

- Easy to read ini files for easy troubleshooting and advance setup

- Built in update notifier.

- Torrents download one after another in order to stay low on memory usage.

- Easy to read text

<h2>LIMITS:</h2>

- Adding foreign characters to the filter list needed to be added via ini file.

<h2>Known Bugs</h2> (To the best of my knowledge):

- If a rss feed is more than 1,500 torrents the program locks up for multiple seconds but <strong>does</strong> pull through eventually.

- Typos… 

<h2>Dependencies that may be required based on linux distro:</h2>
- libcurl4
- libopenal1

<h2>How To:</h2>

1) Get url of the rss feed (including the https://www.)

2) click on pencil next to edit website list and manually type in the full url. (sorry don’t know how to copy paste for linux)

3) Click ok and go to edit filtered word list and type in the number for the premade groups or add your own and click ok.

4) Adjust timer to be more delay time, I suggest to set it at least 30.

5) Change the destination of the torrents by clicking on the folder. The destination must be the full path /home/… without short cuts such as ~ and must end with / .

6) Enjoy the program grabbing and downloading the .tor files for you

<hr>
</hr>
<h2>Plans for the future:</h2>
- Add in private rss feeds (Low chance due to no access to one)


<hr>
</hr>

<strong>Note:</strong> Dont forget to <strong>fix the permissions</strong> to allow it to be executed.<br>
<strong>Note 2:</strong> Using VNC and so far only VNC does weird things to keyboard input.<br>

Feel free to look at the ini files but I advice against editing anything in them as they keep settings and may not load the setting next time.<br>



To reset the whole program just delete the ini files.

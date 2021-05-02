<h1>feedrss : A simple to rss feed manager for .tor files</h1>
<hr>
</hr>
<h3>Story behind why I made this:</h3>
<hr>
</hr>
I made this program as I keep having issues with torrent engines updating and breaking their builtin rss feed downloader or the rss feed downloader being spotty on what it grabs. Being fed up with this I made a program in GML (Game Maker Language) that I feel is easy to use and easy to understand.
I would call this something like flexget but stripped down and very plug and play.
<hr>
</hr>
Current Version = 1.0.7
<hr>
</hr>

<h2><strong>What it can do:</strong></h2>

-Parse public rss feeds and filter them out based on premade groups, premade words, and your custom words.

-Parses up to 100 torrents per rss feed at a time. 

-Custom words that a standard English keyboard allows.

-12 Premade filter rules such as publish date, xxx terms, Chinese characters, and more.

-Allows custom download location 

-Custom timer to start the data grab

-A UI that says last time updated, amount last downloaded, websites grabbing from, and number of custom words.

-A download now button to force a parse of all listed websites

-Only 35mb on idle and only goes up 1-3mb per url added.

-Compare feed to past downloads to improve less duplicates.

-Built in update notifier.

-Torrents download one after another in order to stay low on memory usage.


<hr>
</hr>

<h2>LIMITS:</h2>

*No Magnets (I can’t figure out how to work magnet links since they are encoded)


<hr>
</hr>

<h2>Known Bugs</h2> (To the best of my knowledge):

-If a rss feed is more than 1,500 torrents the program locks up for multiple minutes but <strong>does</strong> pull through eventually.

-Typos… 

<hr>
</hr>

<h2>How To:</h2>

<hr>
</hr>

1)Get url of the rss feed (including the https://www.)

2)click on pencil next to edit website list and manually type in the full url. (sorry don’t know how to copy paste for linux)

3)Click ok and go to edit filtered word list and type in the number for the premade groups or add your own and click ok.

4)Adjust timer to be more delay time, I suggest to set it at least 30.

5)Change the destination of the torrents by clicking on the folder. The destination must be the full path /home/… without short cuts such as ~ and must end with / .

6)Enjoy the program grabbing and downloading the .tor files for you

<hr>
</hr>
<h2>Plans for the future:</h2>

-Explain how to edit the ini files for advance setup (possible)

-Add in private rss feeds (Low chance due to no access to one)

-Figure out magnet rss feeds (VERY Low chance due to no idea how to decode these things)

<hr>
</hr>

<strong>Note:</strong> Dont forget to <strong>fix the permissions</strong> to allow it to be executed.
<strong>Note 2:</strong> Using VNC and so far only VNC does weird things to keyboard input.

Feel free to look at the ini files but I advice against editing anything in them as they keep settings and may not load the setting next time.



To reset the whole program just delete the ini files.

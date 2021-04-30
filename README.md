 I made this cause I keep having issues with torrent engines updating and breaking the rss feed downloader or the rss feed downloader being spotty on what it grabs.

I would call this something like flexget but stripped down and very plug and play.

--------------------------------------------------------------------------------------------------------------------------------------------
Current Version = 1.0.7

--------------------------------------------------------------------------------------------------------------------------------------------

<strong>What it can do:</strong>

\-Parse public rss feeds and filter them out based on premade groups types, premade words, and your custom words.

\-Parses up to 100 torrents per rss feed at a time. 

\-Custom words that a standard English keyboard allows.

\-12 Premade filter rules such as publish date, xxx terms, Chinese characters, and more.

\-Allows custom download location 

\-Custom timer to start the data grab

\-A UI that says last time updated, amount last downloaded, websites grabbing from, and number of custom words.

\-A download now button to force a parse of all listed websites

\-Only 35mb on idle and only goes up 1-3mb per url added.

\-Compare a history in file to see if file was previously downloaded.

\-Built in update notifier.

\-Torrents download one after another in order to stay low on memory usage.

--------------------------------------------------------------------------------------------------------------------------------------------

<strong>LIMITS:</strong>

\-No Magnets (I can’t figure out how to work magnet links since they are encoded)

--------------------------------------------------------------------------------------------------------------------------------------------

<strong>Bugs</strong> (To the best of my knowledge):

\-If the rss feed is more than 1,500 torrents the program locks up for multiple minutes but does pull through eventually.


\-Typos… 

--------------------------------------------------------------------------------------------------------------------------------------------

<strong>How To:</strong>

1)Get url of the rss feed (including the https://www.)

2)click on pencil next to edit website list and manually type in the full url. (sorry don’t know how to copy paste for linux)

3)Click ok and go to edit filtered word list and type in the number for the premade groups or add your own and click ok.

4)Adjust timer to be more delay time, I suggest to set it at least 30.

5)Change the destination of the torrents by clicking on the folder. The destination must be the full path /home/… without short cuts such as ~ and must end with / .

6)enjoy the program grabbing and downloading the tor files for you

--------------------------------------------------------------------------------------------------------------------------------------------

<strong>Plans for the future:</strong>

\-Explain how to edit the ini files for easier setup (possible)

\-Add in private rss feeds (Low chance due to no access to one)

\-Figure out magnet rss feeds (VERY Low chance due to no idea how to decode the things)

--------------------------------------------------------------------------------------------------------------------------------------------

<strong>Note:</strong> Dont forget to <strong>fix the permissions</strong> to allow it to be executed.
<strong>Note 2:</strong> Using VNC and so far only VNC does weird things to keyboard input.
Feel free to look at the ini files but I advice against editing anything in them as they keep settings and may not load the setting next time.



To reset the whole program just delete the ini files.

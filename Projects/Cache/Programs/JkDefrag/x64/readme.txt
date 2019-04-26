JkDefrag is completely automatic - The commandline options are not needed for normal use.
 
JkDefrag is ready to run, just click the "JkDefrag" program. Default behavior is to automatically process all the mounted, writable, fixed volumes on your computer. You can change this behavior with the following commandline options: 

For example:     JkDefrag.exe -a 7 -d 2 -q c: d: 
  
-a N      The action to perform. N is a number from 1 to 11, default is 3:
 1 = Analyze, do not defragment and do not optimize.
 2 = Defragment only, do not optimize.
 3 = Defragment and fast optimize [recommended].
 5 = Force together.
 6 = Move to end of disk.
 7 = Optimize by sorting all files by name (folder + filename).
 8 = Optimize by sorting all files by size (smallest first).
 9 = Optimize by sorting all files by last access (newest first).
 10 = Optimize by sorting all files by last change (oldest first).
 11 = Optimize by sorting all files by creation time (oldest first).
 
-e "mask"      Exclude files and/or directories that match the mask. The items will not be defragmented and will not be moved. Use wildcards '*' and '?' in the mask to match a set of files or directories. If the mask contains a space then it must be enclosed in double-quotes. Some examples: 

JkDefrag -e *.avi -e *.zip -e *.log 
JkDefrag -e D:\MySQL\Data\* 
 
-u "mask"      Files that match a mask will be moved to the SpaceHogs area. The program has a built-in list for all files bigger than 50 megabytes, files not accessed in the last month, archives, files in the recycle bin, service pack files, and some others. Disable this list by specifying the special mask "DisableDefaults". Use wildcards '*' and '?' in the mask to match a set of files or directories. If the mask contains a space then it must be enclosed in double-quotes. Some examples: 

JkDefrag -u *.avi -u *.zip -u *.log 
JkDefrag -u D:\MySQL\Data\* 
 
-s N      Slow down to N percent (1...100) of normal speed. Default is 100.  
-f N      Set the size of the free spaces to N percent (0...100) of the size of the volume. The free spaces are room on disk for temporary files. There are 2 free spaces, between the 3 zones (directories, regular files, SpaceHogs). Default is 1% (per free space).  
-d N      Select a debug level, controlling the messages that will be written to the logfile. The number N is a value from 0 to 6, default is 1:
 0 = Fatal errors.
 1 = Warning messages [default].
 2 = General progress messages.
 3 = Detailed progress messages.
 4 = Detailed file information.
 5 = Detailed gap-filling messages.
 6 = Detailed gap-finding messages.  
-l "filename"      Specify a filename for the logfile. Default is "JkDefrag.log" and "JkDefragCmd.log". Specify empty string "" (two double-quotes) to disable the logfile.  
-h      [commandline version only] Show a short help text.  
-help      [commandline version only] Show a short help text.  
--help      [commandline version only] Show a short help text.  
/?      [commandline version only] Show a short help text.  
-q      [windows version only] Quit the program when it has finished.  
items      The items to be defragmented and optimized, such as a file, directory, disk, mount point, or volume, including removable media such as floppies, USB disks, memory sticks, and other volumes that behave like a harddisk. Wildcards '*' and '?' are allowed to select a set of files. If the item contains a space then it must be enclosed in double-quotes. Some examples: 

JkDefrag C: D: 
JkDefrag f:\*.log D:\MySQL\Data\* 
 


Fast optimization This optimization strategy is designed for every day use. It moves a minimum of data on the harddisk and finishes very quickly, but will not fill all the gaps on the disk. The strategy scans for gaps on the disk and fills them with files from above. Sorted optimization All the sorting optimizations WILL CREATE FRAGMENTS. This is by design, it is not a bug. For more info see the Frequently Asked Questions.
 These sorting optimizations are for incidental use once in a while. They take a lot of running time and data movement because they rewrite all the data on the disk. The strategies vacate a small area on disk and then fill it up again with the files in the selected order. • Sort by name: very good for fast program starting. The files used by a particular program will be very close together on disk. 
• Sort by size: placing all the small files together at the beginning of the disk will dramatically reduce the average file seek time. 
• Sort by last access: files that have not been accessed in a while are probably unimportant and are best sorted to the back. 
• Sort by last change: placing files together that change a lot (for example databases and log files) will speed up regular operation of the system. 
• Sort by creation time: The oldest files on the disk are likely to be important system files, for example used when Windows is booting. 
Note: If you want to sort by last access time then first make sure your virus scanner (and other programs that scan all files on disk) do not change that time. Force together Intended for partition resizing. All movable files are moved to the beginning of the disk, even if it means fragmenting them to fill gaps that cannot be filled otherwise. Move to end of disk Move all the files to the end of the disk, making more room at the beginning of the disk. Intended for big and rarely used files such as log files, backup archives, installation files, and such. 
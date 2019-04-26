AccessGain MiniFilter Driver 1.1

-------------------------------------------------------------------------------------

(C) Copyright 2009-2011 by Razvan Hobeanu and Bogdan Hobeanu (www.hobeanu.com)

Description:

This is the first release of a mini-filter driver used to bypass file system security
checks in order to access folders protected by NTFS security permissions or by 
3rd-party software.

URL: http://www.hobeanu.com/blog

Supported operating systems:

- Windows 2000 SP4 Rollup 1
- Windows XP SP2, SP3
- Windows Server 2003 32-bit and 64-bit
- Windows Vista RTM, SP1 32-bit and 64-bit
- Windows Server 2008 32-bit and 64-bit
- Windows 7 32-bit and 64-bit

Please note that in order to load the driver on 64-bit versions of Windows you have to
disable the driver signature enforcement:

http://msdn.microsoft.com/en-us/library/aa906338.aspx


--------------------------------------------------------------------------------------
*** CHANGE LOG ***
--------------------------------------------------------------------------------------

2011-01-14 - Version 1.1 released - Bugfix

    * - Added handling for Fast I/O operations. 
        Special thanks to Christian Morrone for reporting and helping us with 
        reproducing this bug.

2009-04-28 - Initial release


--------------------------------------------------------------------------------------
*** INSTALLATION AND USAGE INSTRUCTIONS ***
--------------------------------------------------------------------------------------

1. Choose your platform folder:

   - 32-bit: i386
   - 64-bit: amd64

2. Right-click accgain.inf and click Install

   - this will copy accgain.sys to the \windows\system32\drivers folder
     and register the minifilter

3. Open a command prompt

4. Type: fltmc load AccessGainDriver

   - this will load the AccessGain MiniFilter driver into memory

5. Type: fltmc attach AccessGainDriver c:

   - this will attach the AccessGain MiniFilter driver to your C: drive.

6. Try using Explorer to browse C:\System Volume Information which is a folder
   protected by the operating system using NTFS security permissions.

7. Enjoy!

--------------------------------------------------------------------------------------

Detaching and unloading:

1. Open a command prompt

2. Type: fltmc detach AccessGainDriver c:

3. Type: fltmc unload AccessGainDriver

4. You're done!

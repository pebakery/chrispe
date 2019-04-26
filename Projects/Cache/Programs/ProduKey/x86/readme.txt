


ProduKey v1.93
Copyright (c) 2005 - 2018 Nir Sofer
Web Site: http://www.nirsoft.net/utils/product_cd_key_viewer.html



Description
===========

ProduKey is a small utility that displays the ProductID and the CD-Key of
MS-Office, Windows, Exchange Server, and SQL Server installed on your
computer. You can view this information for your current running
operating system, or for another operating system/computer - by using
command-line options. This utility can be useful if you lost the product
key of your Windows/Office, and you want to reinstall it on your computer.



Versions History
================


* Version 1.93
  o Added 'Office Product Name Extraction Mode' option, which
    controls the way that the product name of MS-Office is extarcted from
    the Registry:
    'Prefer the product name from Uninstall Registry key' - ProduKey
    tries to extract the product name from the Uninstall Registry entry,
    like it did until version 1.85
    'Prefer the product name from Office Registry key' - ProduKey first
    tries to extract the product name from 'ProductNameNonQualified' and
    'ConvertToEdition' Registry values, like it did starting from version
    1.86

* Version 1.92
  o Added 'Build Number' column (For Windows entries only).

* Version 1.91
  o When loading product keys from remote computer or external drive,
    the name of the computer or external path is now displayed in the
    window title.

* Version 1.90
  o When the 'Temporarily start the remote registry service on the
    remote computer' option is turned on, ProduKey now starts the Remote
    Registry service even if it's disabled.

* Version 1.88
  o Added 'Save All Items' option.

* Version 1.87
  o Fixed to display Office version if the product name is not stored
    in the Registry.

* Version 1.86
  o Fixed bug: ProduKey displayed wrong product name of Microsoft
    Office taken from another Registry key.

* Version 1.85
  o Added 'Auto Size Columns+Headers' option.
  o Added 'Auto Size Columns On Load' option.

* Version 1.83
  o Added support for SQL Server 2012/2014.

* Version 1.82
  o Added 'Run As Administrator' option (Ctrl+F11), which is needed
    to get a product key from external drive on Windows Vista and later.

* Version 1.81
  o You can now export the product keys list to JSON file.

* Version 1.80
  o Added option to temporarily start the remote registry service on
    the remote computer (For reading the product keys from the Registry
    on the remote computer).

* Version 1.75
  o Added support for some Adobe and Autodesk products.

* Version 1.70
  o Added support for BIOS OEM Key (Windows 8).

* Version 1.67
  o The DefaultProductKey Registry key support added on v1.61 is now
    turned off by default (You can turn it on with 'Load Default Product
    Key' option).

* Version 1.66
  o Added /NoErrorMessage command-line option. If you specify it with
    a save command-line option, an error message won't be displayed if
    the save action is failed. Instead, the error code will be returned
    to the caller.

* Version 1.65
  o Added support for Visual Studio.

* Version 1.62
  o Fixed bug from v1.61: ProduKey crashed in some systems.

* Version 1.61
  o ProduKey now tries to extract the key from DefaultProductKey
    Registry key if the product key cannot be found in the standard
    location of Windows 7 product key.

* Version 1.60
  o Added support for SQL Server 2008.

* Version 1.56
  o Fixed a bug with the 'N' character location on the product key of
    Windows 8.

* Version 1.55
  o Fixed ProduKey to decode properly the product key of Windows 8.

* Version 1.54
  o Fixed issue: The properties and 'Select Source' windows opened in
    the wrong monitor, on multi-monitors system.

* Version 1.53
  o Fixed bug: ProduKey displayed wrong product name string for
    Exchange Server 2003.

* Version 1.52
  o Decreased the height of the 'Select Source' window to fit the
    netbook screen size of 1024x600.

* Version 1.51
  o Added 'Show Time In GMT' option.
  o Added 'Mark Odd/Even Rows' option, under the View menu. When it's
    turned on, the odd and even rows are displayed in different color, to
    make it easier to read a single line.

* Version 1.50
  o Added 'Show the computer name for every IP address' option. This
    option is useful when you scan a range of IP addresses, and you want
    to view the computer name of every IP address. Be aware that the
    computer names will appear a few seconds after finishing to scan the
    product keys.

* Version 1.46
  o Added accelerator keys for 'Copy Product ID' (Ctrl+I) and for
    'Copy Product Key' (Ctrl+K).

* Version 1.45
  o Added 'Add Header Line To CSV/Tab-Delimited File' option. When
    this option is turned on, the column names are added as the first
    line when you export to csv or tab-delimited file.

* Version 1.43
  o When the product key is not stored in the Registry (like in
    volume licenses of Windows 7), ProduKey will display 'Product key was
    not found' instead of wrong 'BBBBB-BBBBB-BBBBB-BBBBB-BBBBB' key

* Version 1.42
  o Added 'Copy Product ID' and 'Copy Product Key' options.

* Version 1.41
  o Added /ExtractEdition command-line option.

* Version 1.40
  o Fixed ProduKey to display the right product key of Microsoft
    Office 2010 Beta (Office 14)

* Version 1.38
  o Added sorting options from command-line.

* Version 1.37
  o Fixed issue with x64 systems - The 32-bit version of ProduKey can
    now also retrieve the product key when you run it on x64 system.

* Version 1.36
  o Added command-line options to control which types of product keys
    will be shown. (/WindowsKeys, /OfficeKeys, and others)

* Version 1.35
  o New option: Load the product keys of external Windows
    installations from all disks currently plugged to your computer. When
    using this option, ProduKey automatically scan all your hard-drives,
    find the Windows installation folder in them, and extract all product
    keys stored in these Windows installations.
  o New Command-Line Option: /external

* Version 1.33
  o Fixed bug: In 'Select Source' dialog-box, a disk drive error
    message displayed in some computers.
  o Added AutoComplete to Windows directoried combo-box.

* Version 1.32
  o You can now send the information to stdout by specifying an empty
    filename ("") in the command-line. (For example: produkey.exe /stab
    "" >> c:\temp\prd.txt)

* Version 1.31
  o Added the last modified time of the ProductID Registry key.

* Version 1.30
  o New option: display the edition
    (Standard/Professional/Enterprise) of Windows 2000/XP/2003. (doesn't
    work for remote computers)
  o Added AutoComplete for file selection.
  o Fixed bug: The main window lost the focus when the user switched
    to another application and then returned back to ProduKey.

* Version 1.26
  o Added support for saving comma-delimited (.csv) files.
  o Added new command-line option: /scomma

* Version 1.25
  o Added new source option: Load the product keys from all computers
    in the specified IP addresses range.
  o New command-line option: /iprange
  o New option: Check every remote machine with ping before trying to
    connect. (Only for Windows 2000 or above)

* Version 1.20
  o Added 'Select Source' (F9) option - user interface for loading
    the product keys from remote computers or from external drive.

* Version 1.15
  o Added 'Service Pack' column (Only for Windows entries)
  o Added 'Installation Folder' column (Only for Windows and Office
    entries)

* Version 1.10 - Added filters by product type.
* Version 1.08 - The configuration of ProduKey is now saved to a file
  instead of the Registry.
* Version 1.07
  o Added support for product key of Ms-Office under x64, when it's
    retrieved from external Registry file.
  o Added x64 build - for locally retrieving product keys of x64
    versions of Windows.

* Version 1.06 - Added support for SQL Server 2005.
* Version 1.05
  o Display information in the status bar while scanning computers
    with /remoteall and /remotefile options
  o New option /remotealldomain - scan all computers in the specified
    domain.
  o Changes in the way that /remoteall scan all computers.

* Version 1.04 - Added product key of Exchange Server.
* Version 1.03 - new command-line option: /remoteall
* Version 1.02 - On newer versions of Office (XP/2003) - display the
  real product name, if it's written in the Registry.
* Version 1.01 - Added support for XP visual style.
* Version 1.00 - First release.



Known Problems
==============


* When running produkey.exe, Some Antivirus programs displays an alert
  and/or block you from running it. Click here to read more about false
  alerts in Antivirus programs
* For some Windows 7/8/2008 licenses, the product key is not stored in
  the Registry, and thus ProduKey cannot retrieve them. In these cases,
  ProduKey will display 'Product key was not found' in the product key
  column.
* If you bought your computer with installed operating system, you may
  find the Windows product key appeared in ProduKey utility is different
  from the product key on your Windows CD. This problem is mostly
  reported with Dell computers.
* From unknown reason, the product key of Visual Stuido .NET is written
  in the Registry as Office XP product...
* In old versions of Office (Office 2000 and below), the 'Product Key'
  value is not available.



Supported Products List
=======================


* Microsoft Windows 98/ME
* Microsoft Windows 2000
* Microsoft Windows NT
* Microsoft Windows XP
* Microsoft Windows Vista
* Microsoft Windows Server 2003
* Microsoft Windows 7 (Doesn't work with Microsoft Volume Licensing)
* Microsoft Windows 8 (Doesn't work with Microsoft Volume Licensing)
* Microsoft Windows 10 (Doesn't work with all types of licenses)
* Microsoft Office 2000 (Only ProductID is displayed)
* Microsoft Office 2003
* Microsoft Office 2007
* Microsoft Office 2010
* Microsoft SQL Server 2000
* Microsoft SQL Server 2005
* Microsoft Exchange Server 2000
* Microsoft Exchange Server 2003
* Visual Studio
* Some of the Adobe and Autodesk products.



System Requirements
===================

ProduKey works on all versions of Windows. Both 32-bit and 64-bit systems
are supported. However, some features, like viewing the product keys of
another operating system instance, are only supported on Windows
2000/XP/2003/2008/Vista/7/8.



License
=======

This utility is released as freeware. You are allowed to freely
distribute this utility via floppy disk, CD-ROM, Internet, or in any
other way, as long as you don't charge anything for this and you don't
sell it or distribute it as a part of commercial product. If you
distribute this utility, you must include all files in the distribution
package, without any modification !



Disclaimer
==========

The software is provided "AS IS" without any warranty, either expressed
or implied, including, but not limited to, the implied warranties of
merchantability and fitness for a particular purpose. The author will not
be liable for any special, incidental, consequential or indirect damages
due to loss of data or any other reason.



Using ProduKey
==============

ProduKey doesn't requite any installation process or additional DLLs. In
order to start using it, just run the executable file - produkey.exe
The main window of ProduKey displays the list of Windows, Office, and SQL
Server products installed on your system. For each product, the "Product
ID" and "Product Key" are displayed. If you want the view the product key
information in another computer, or in another operating system within
the same computer, use the command-line options below.



Command-Line Options
====================



/remoteall
Enumerate all computers on your local network, and load the product key
information from them. Be aware that this option is quite slow, and you
may need to wait a few minutes until the product key information is
displayed. In order to use this option, you must have Administrator
privileges in all computers on your local network.

/remotealldomain [Domain Name]
Enumerate all computers in the specified domain, and load the product key
information from them.

/remote [Computer Name]
Load product key information from the specified computer name. In order
to use this option, you must log in to the remote computer with
Administrator privileges.

If you fail to connect the remote computer with ProduKey, read the
instructions in the following Blog post:
How to connect a remote Windows 7/Vista/XP computer with NirSoft
utilities.

/iprange [From IP] [To IP]
Load product key information from all computers in the specified IP
addresses range. In order to use this option, you must have Administrator
privileges in all these computers.

/remotefile [Computer Names Filename]
Load product key information from all computer names specified in the
file. The file can be tab-delimited, comma-delimited, or CRLF-delimited.
In order to use this option, you must have Administrator privileges in
all computers specified in the computer names file.

/windir [Windows Directory]
Load product key information from another operating system on the same
computer. The [Windows Directory] specifies the base folder of Windows
installation, for example: c:\windows, c:\winnt

This feature is only supported on Windows 2000/XP/2003/2008/Vista/7.

/external
Load product key information from all external Windows installations of
the disks that are currently plugged to your computer.

/regfile [Software Registry File]
Load product key information from another operating system on the same
computer. The [Software Registry File] specifies the software registry
file usually located under c:\windows\system32\config

This feature is only supported on Windows 2000 or greater.

/nosavereg
Load ProduKey without saving your last settings (window location, columns
size, and so on) to the Registry.

/WindowsKeys [0 | 1]
Specifies whether you want to view the product keys of Windows. 0 = No, 1
= Yes.

/OfficeKeys [0 | 1]
Specifies whether you want to view the product keys of MS-Office. 0 = No,
1 = Yes.

/IEKeys [0 | 1]
Specifies whether you want to view the product keys of Internet Explorer.
0 = No, 1 = Yes.

/SQLKeys [0 | 1]
Specifies whether you want to view the product keys of SQL Server. 0 =
No, 1 = Yes.

/ExchangeKeys [0 | 1]
Specifies whether you want to view the product keys of Exchange. 0 = No,
1 = Yes.

/ExtractEdition [0 | 1]
Specifies whether to extact the Windows edition information.

You can also combine the above command-line options with the following
save options in order to save product key information to file:

/stext <Filename>
Save the list of product keys into a regular text file.

/stab <Filename>
Save the list of product keys into a tab-delimited text file.

/scomma <Filename>
Save the list of product keys into a comma-delimited text file.

/stabular <Filename>
Save the list of product keys into a tabular text file.

/shtml <Filename>
Save the list of product keys into HTML file.

/sverhtml <Filename>
Save the list of product keys into vertical HTML file.

/sxml <Filename>
Save the list of product keys into XML file.

/sjson <Filename>
Save the list of product keys into JSON file.

/sort <column>
This command-line option can be used with other save options for sorting
by the desired column. If you don't specify this option, the list is
sorted according to the last sort that you made from the user interface.
The <column> parameter can specify the column index (0 for the first
column, 1 for the second column, and so on) or the name of the column,
like "Product Name" and "Product Key". You can specify the '~' prefix
character (e.g: "~Installation Folder") if you want to sort in descending
order. You can put multiple /sort in the command-line if you want to sort
by multiple columns.

Examples:
produkey.exe /shtml "f:\temp\keys.html" /sort 2 /sort ~1
produkey.exe /shtml "f:\temp\keys.html" /sort "Product Name" /sort
"Product Key"

/nosort
When you specify this command-line option, the list will be saved without
any sorting.

/NoErrorMessage
When you specify it, ProduKey will not display an error message if the
save action is failed.

Examples:
produkey.exe /remote \\Server01
produkey.exe /remotefile "c:\temp\computers.txt"
produkey.exe /regfile "F:\WINNT\system32\config\software"
produkey.exe /windir "c:\winnt" /shtml "c:\temp\pk.html"
produkey.exe /remoteall
produkey.exe /remotealldomain MyDomain
produkey.exe /iprange 192.168.1.10 192.168.1.50
produkey.exe /stab "" >> c:\temp\prd.txt
produkey.exe /OfficeKeys 0 /WindowsKeys 1 /shtml f:\temp\keys.html



Translating ProduKey to other languages
=======================================

In order to translate ProduKey to other language, follow the instructions
below:
1. Run ProduKey with /savelangfile parameter:
   ProduKey.exe /savelangfile
   A file named ProduKey_lng.ini will be created in the folder of
   ProduKey utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run ProduKey, and all translated
   strings will be loaded from the language file.
   If you want to run ProduKey without the translation, simply rename the
   language file, or move it to another folder.



Feedback
========

If you have any problem, suggestion, comment, or you found a bug in my
utility, you can send a message to nirsofer@yahoo.com

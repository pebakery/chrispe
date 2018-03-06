    -------------------------------------------------------------------

    bbLeanBar is a plugin for Blackbox for Windows

    Copyright 2004-2009 grischka
    http://bb4win.sourceforge.net/bblean/

    This program is free software, released under the GNU General
    Public License (GPL version 2). For details see:

        http://www.fsf.org/licenses/gpl.html


    THIS PROGRAM IS DISTRIBUTED IN THE HOPE THAT IT WILL BE USEFUL,
    BUT WITHOUT ANY WARRANTY, WITHOUT EVEN THE IMPLIED WARRANTY OF
    MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

    -------------------------------------------------------------------


    bbLeanBar is a configurable taskbar for Blackbox for Windows.


    mouse clicks:
    =============

    on taskentry:
    ------------------------
    left                        activate task
    gesture to the left/right   move window to previous/next workspace
    shift-left                  zoom task into current workspace

    right                       minimize task
                                (or show window system menu if set so in
                                configuration-> tasks->system menu)

    shift-right                 close task

    middle                      move task to next workspace
    with shift                  move task to previous workspace

    alt-left                    change task display mode (text, icon, text+icon)
    alt-right                   toggle 'current only' mode


    on workspace label:
    ------------------------
    left/right                  next/previous workspace


    on clock:
    ------------------------
    double left                 open clock properties
    < other >                   take over the configuration for desktop-clicks in
                                extensions.rc, e.g. right-click for blackbox menu

    on trayicon:
    ------------------------
    ctrl-right                  show icons menu
    alt-right                   toggle all hidden icons
    shift-right                 toggle one icon
    <all other>                 <forwarded to the icons's application>


    on current-only-button:
    ------------------------
    left click:                 toggle display tasks for all/current workspace
    right click:                toggle display all trayicons


    on the entire bar:
    ------------------------
    ctrl-right                  bbleanbar options menu
    ctrl-left-drag              move the bar
    ctrl-left-double-click      reset the bar to its previous location


    Tips and Tricks:
    ================

    - Windows can be moved between workspace using 'mouse gestures'. This
      is: Click, hold, move to the left or right, release.

    - Items on the bar can be added or removed or changed by order
      in bbLeanBar.rc.

    - Icon color saturation can be adjusted in the configuration menu

    - Icon size can be toggled between standard (16x16) and 'fit to
      toolbar metrics' (smaller).

    - Tasks can be configured to show all tasks or only tasks from the
      current workspace (monitor) from the configuration menu or using
      the 'current-only' button (the one with the little circle)

    - bbLeanBar can be run with two or more instances of itself, for example
      one on each monitor. To get this, just load the same bbLeanBar.dll one
      more time (do *not* use a copy).

      The settings for all bars can be found in the same bbLeanbar.rc. For
      instance the items on the second bar can be set like this:

          bbleanbar.2.item: WorkspaceLabel
          ...



    Clock date formating:
    =====================

    %a Abbreviated weekday name
    %A Full weekday name 
    %b Abbreviated month name 
    %B Full month name 
    %c Date and time representation appropriate for locale 
    %d Day of month as decimal number (01 - 31) 
    %H Hour in 24-hour format (00 - 23) 
    %I Hour in 12-hour format (01 - 12) 
    %j Day of year as decimal number (001 - 366) 
    %m Month as decimal number (01 - 12) 
    %M Minute as decimal number (00 - 59) 
    %p Current locale's A.M./P.M. indicator for 12-hour clock 
    %S Second as decimal number (00 - 59) 
    %U Week of year as decimal number, with Sunday as first day
    %w Weekday as decimal number (0 - 6; Sunday is 0) 
    %W Week of year as decimal number, with Monday as first day
    %x Date representation for current locale 
    %X Time representation for current locale 
    %y Year without century, as decimal number (00 - 99) 
    %Y Year with century, as decimal number 
    %% Percent sign 
    %z Either the time-zone name or time zone abbreviation
    %Z same as above

    %K two letter abbreviation for the active keyboard layout. (special
       bbLeanBar extension)


    The # flag alters the behaviour of the above as follows:

    %#c Long date and time representation appropriate for locale. 
    %#x Long date representation, appropriate for locale. 
    %#d, %#H, %#I, %#j, %#m, %#M, %#S, %#U, %#w, %#W, %#y, %#Y
       Remove leading zeros (if any). 
    %#a, %#A, %#b, %#B, %#p, %#X, %#z, %#Z, %#% #
       flag is ignored 

    -------------------------------------------------------------------



  bbLeanSkin 1.17
  ***************

    bbLeanSkin is a plugin for Blackbox for Windows.
    Copyright © 2003-2009 grischka <grischka@users.sourceforge.net>

    http://bb4win.sourceforge.net/bblean
    http://bb4win.sourceforge.net/

    This program is free software, released under the GNU General
    Public License (GPL version 2). For details see:

      http://www.fsf.org/licenses/gpl.html

    THIS PROGRAM IS DISTRIBUTED IN THE HOPE THAT IT WILL BE USEFUL,
    BUT WITHOUT ANY WARRANTY, WITHOUT EVEN THE IMPLIED WARRANTY
    OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.


  Get started
  -----------

  To run bbLeanSkin, just load 'bbLeanSkin.dll' from bbLean's plugin
  menu, or add it manually to plugins.rc.

  Configuration
  -------------

  bbLeanSkin doesn't come with any visual elements. For configuration
  edit bbLeanSkin.rc.

  Also you can ínsert a submenu for bbleanskin into your main menu
  using this line:

      [include] {plugins\bbLeanSkin\menu.rc}

  These are the broadcast messages that bbLeanSkin recognizes:

      @BBLeanSkin.ToggleLog
      @BBLeanSkin.ToggleSkin
      @BBLeanSkin.buttonOrder 400321
      @BBLeanSkin.buttonGlyphs my_buttons.bmp
      @BBLeanSkin.About

  See 'bblsmenu.rc' for details.


  Button Glyphs
  -------------

  You can now make and set your own button glyphs for the titlebar
  buttons. The bitmap image may be set up for glyphs from 9x9 to
  17x17 max. The image size is calulated like:

      width: 6*(N+1)+1   height: 2*(N+1)+1

  For example for 11x11 usuable area, the bitmap needs to be 73x25.


  Exclusion List
  --------------

  bbLeanSkin is supposed to run fine with most programs, on all windows
  versions. But there are still chances that some applications dont
  like to be skinned. Some come with their own skins, others dont behave
  well for other reasons.

  To exclude a program, you need to add it's name to exclusions.rc.

  The names to put there are *not* always identic to the exe-names. For
  that reason bbLeanSkin comes with a built-in log window where it lists
  windows with their internal names.

  To enable the Log Window, either:
  - From the bbLeanSkin configuration menu click 'Toggle Log', then
    'Toggle Skin' twice.

  - Or set the option in bbLeanSkin.rc manually and reconfigure
    blackbox: 'bbLeanSkin.option.enableLog: true'

  Best is to copy & paste the names directly from the log window
  into extensions.rc.

  To make the exclusions take effect, un/reload the plugin or restart
  blackbox, or click 'Toggle Skin' twice as above.


  Known Issues
  ------------

  - With slim titlebars, there may be left some pixels space between
    maximized windows and the top of the screen. To avoid this, try
    this option.

        bbLeanSkin.option.adjustCaptionHeight: true

    Note however that this may effect to distortion with icons drawn
    within certain applications. (Because the caption size influences
    the system default icon size, and some apps use that size for their
    icons, and non-standard-sized icons generally don't look so good.)

  - When blackbox is run over explorer, the windows taskbar might have
    changed metrics afterwards. To fix this, reset your windows theme
    from the display properties.

  - Some windows are not skinned at all. (for example cmd.exe).

  - bbLeanSkin may cause conflicts with virus protection software
    (hanging of crashing applications). If you don't need it,
    uninstall that software, it will make your computer run faster
    and more stable anyway.


  Credits
  -------

  - Thanks to the developer of CustomEyes, Didier Abderrahmane
    (http://dabder.free.fr/CE/), from his code I learned the
    principles.

  - To the developers of BBWinSkin, seeing their program running
    finally convinced me that the result makes it worth to start.

  - And to the makers of EFX, who proved, that a program like
    this can work reasonably stable.


  Disclaimer
  ----------

  BBLEANSKIN IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND.
  THE AUTHOR DISCLAIMS ALL WARRANTIES, EITHER EXPRESS OR
  IMPLIED, INCLUDING THE WARRANTIES OF MERCHANTABILITY AND
  FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE
  AUTHOR OR ITS SUPPLIERS BE LIABLE FOR ANY DAMAGES WHATSOEVER
  INCLUDING DIRECT, INDIRECT, INCIDENTAL, CONSEQUENTIAL, LOSS
  OF BUSINESS PROFITS OR SPECIAL DAMAGES, EVEN IF THE AUTHOR
  OR ITS SUPPLIERS HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH
  DAMAGES.

  ************************************************************

    Dont use bbLeanSkin, when you work on important data!

  ************************************************************

  Okay, that's it. Now, enjoy!
  20 May 2009

  -- grischka


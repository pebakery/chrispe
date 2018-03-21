set WshShell = WScript.CreateObject("WScript.Shell" )
set objShortCut = WshShell.CreateShortcut(Wscript.Arguments.Named("shortcut") & ".lnk")
objShortCut.TargetPath = Wscript.Arguments.Named("target")
objShortCut.WorkingDirectory = Wscript.Arguments.Named("startin")
objShortCut.Arguments = Wscript.Arguments.Named("param")
objShortCut.IconLocation = Wscript.Arguments.Named("icon")
objShortCut.Save
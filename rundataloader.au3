#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <GuiConstantsEx.au3>
#include <GuiListBox.au3>

WinWaitActive("Welcome to Apex Data Loader 23.0","")
MsgBox(0, "Tutorial", "Starting Script")
ControlSend("Welcome to Apex Data Loader 23.0","","[CLASSNN:Button6]","{ENTER}")
WinActivate("Warning","")
WinWaitActive("Export","")
#ControlCommand ("Export", "", "[CLASSNN:Button1]", "Check","")

Global $hLB = ControlGetHandle ("Export", "", "[CLASSNN:ListBox1]")
Global $iCnt = _GUICtrlListBox_GetCount($hLB)
Global $sMsg = ""
#start loop
For $n = 0 To $iCnt - 1

$sMsg = _GUICtrlListBox_GetText($hLB, $n)
Sleep(100)
ControlSetText("Export", "", "[CLASSNN:Edit1]", "C:\Users\chawlag\Desktop\test\" & $sMsg & "-export.csv")
Sleep(100)
#ControlSend("Export","","[CLASSNN:Edit1]","C:\Users\chawlag\Desktop\test\" & $sMsg & "-export.csv")

ControlCommand("Export","","[CLASSNN:ListBox1]","SelectString",$sMsg)
Sleep(100)
ControlClick("Export","","[CLASSNN:Button8]")
Sleep(100)
ControlClick("Export","","[CLASSNN:Button5]")
Sleep(100)
ControlClick("Export","","[CLASSNN:Button9]")
#WinActivate("Warning","")
WinWaitActive("Warning","&Yes")
Send("!y")

WinWaitActive("Operation Finished","")
ControlClick("Operation Finished","","[CLASSNN:Button2]")

#ControlSend("Warning","","[CLASSNN:Button1]","{ENTER}")
#ControlClick("Warning","","[CLASSNN:Button1]")

#For $n = 0 To $iCnt - 1
#	$sMsg &= $n & ":  " & _GUICtrlListBox_GetText($hLB, $n) & @CRLF
WinActivate("Welcome to Apex Data Loader 23.0","")
WinWaitActive("Welcome to Apex Data Loader 23.0","")
#ControlSend("Welcome to Apex Data Loader 23.0","","[CLASSNN:Button6]","{ENTER}")

ControlClick("Welcome to Apex Data Loader 23.0","","[CLASSNN:Button6]")
Sleep(100)
WinActivate("Export","")

WinWaitActive("Export","")
#ControlCommand ("Export", "", "[CLASSNN:Button1]", "Check","")

Local $hLB = ControlGetHandle ( "Export", "", "[CLASSNN:ListBox1]" )
#Local $iCnt = _GUICtrlListBox_GetCount($hLB)
Sleep(100)
Next
#MsgBox(64, "Result", $sMsg)

	#ControlClick("Export","","[CLASSNN:Button10]")
# end loop.

MsgBox(0, "DataLoader Automation", "End Script")


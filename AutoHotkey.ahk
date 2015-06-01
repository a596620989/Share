#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode 2    

Activate(t)
{
  IfWinActive,%t%
  {
    WinMinimize
    return
  }
  SetTitleMatchMode 2    
  DetectHiddenWindows,on
  IfWinExist,%t%
  {
    WinShow
    WinActivate           
    return 1
  }
  return 0
}

ActivateAndOpen(t,p)
{
  if Activate(t)==0
  {
    Run %p%
    WinActivate
    return
  }
}
RunOrActivateProgram(Program, WorkingDir="", WindowSize=""){
    SplitPath Program, ExeFile
    Process, Exist, %ExeFile%
    PID = %ErrorLevel%
    if (PID = 0) {
    Run, %Program%, %WorkingDir%, %WindowSize%
    }else{
    WinActivate, ahk_pid %PID%
    }
} 

#t::ActivateAndOpen("Microsoft onenote","onenote")
#o::ActivateAndOpen("Microsoft Outlook","outlook.exe")
#a::Run "C:\Program Files\OSA"
;#e::RunOrActivateProgram("C:\Program Files\eclipse\eclipse.exe" -data "C:\Workspace\CDTWorkspace" -vm "C:\Program Files\Java\jdk1.6.0_21\jre\bin\javaw.exe" -vmargs -Xms512M -Xmx768M)
#e::RunOrActivateProgram("C:\Program Files\eclipse\eclipse.exe" -vm "C:\Program Files\Java\jre1.8.0_40\bin\javaw.exe")
#n::ActivateAndOpen("Notepad", "C:\Program Files (x86)\Notepad++\notepad++.exe")
#f::RunOrActivateProgram("Firefox", "C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
#c::Run "C:\"
;#g::Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --user-agent="Mozilla/5.0 (Windows NT 6.1; Intel Mac OS X 10.6; rv:7.0.1) Gecko/20100101 Firefox/7.0.1"
#g::Run "C:\Program Files (x86)\Chrome\chrome.exe"
#h::Activate("Chrome")
#i::Run "IEXPLORE.EXE" "www.google.com.hk"
#y::Run "C:\Users\Administrator\AppData\Local\Youdao\Dict\Application\YodaoDict.exe"
#q::Activate("QQ")
^!c:: 
Run "C:\Users\e533268\Program Files\Chrome\Chrome-bin\chrome.exe" --user-agent="Mozilla/5.0 (Windows NT 6.1; Intel Mac OS X 10.6; rv:7.0.1) Gecko/20100101 Firefox/7.0.1" --incognito https://tde.statestr.com
sleep, 10000
send, {tab}
clipboard =e533268
send, ^v+-
sleep, 200
send, {tab}
clipboard=Nishiwodewei1#
send, ^v
sleep, 200
send, {enter}
return
^!r:: 
Run chrome.exe --user-agent="Mozilla/5.0 (Windows NT 6.1; Intel Mac OS X 10.6; rv:7.0.1) Gecko/20100101 Firefox/7.0.1" https://tde-dev1.statestr.com/rateros/
sleep, 3000
send, {tab}
clipboard =e533268
send, ^v
sleep, 200
send, {tab}
clipboard =Nishiwodewei1@
send, ^v
sleep, 200
send, {enter}
return
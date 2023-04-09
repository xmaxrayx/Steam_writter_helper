#SingleInstance, Force
;SendMode Input
;SetWorkingDir, %A_ScriptDir%

;A_Clipboard := ""  ; Start off empty to allow ClipWait to detect when the text has arrived.
/*

xxxxx::
Send ^c
ClipWait
clipboard = [b] [i] %A_Clipboard% [/i] [/b]
Send ^v
return


*/



;[quote] ctrl+q
^q::
  Send ^c
  ClipWait
  clipboard = [quote] %A_Clipboard% [/quote]
  return
;=====================================bold===================
  ;""[b] alt+b  
  !b::
  Send ^c
  ClipWait
  clipboard = [b]"%A_Clipboard%"[/b]
  Send ^v
  return


  ;[/b] ctrl+b  
  ^b::
  Send ^c
  ClipWait
  clipboard = [b] %A_Clipboard% [/b]
  Send ^v
  return
;======================================[Italic]==================== 
  ;[i] ctrl+I  
  ^i::
  Send ^c
  ClipWait
  clipboard = [i] %A_Clipboard% [/i]
  Send ^v
  return

  ; ""[i] ctrl+I  
  !i::
  Send ^c
  ClipWait
  clipboard = [i] "%A_Clipboard%" [/i]
  Send ^v
  return
 
;===============================[Bold+italic]==============
;[i] Shift+ctrl+I  
^!b::
Send ^c
ClipWait
clipboard = [b] [i] %A_Clipboard% [/i] [/b]
Send ^v
return








;==============================[spoiler]=============================
^s::
Send ^c
ClipWait
clipboard = [spoiler]  %A_Clipboard% [/spoiler] 
Send ^v
return


;==============================[spoiler]=============================


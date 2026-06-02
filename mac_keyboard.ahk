#Requires AutoHotkey v2.0
#SingleInstance Force
#UseHook

; Windows keyboard -> macOS-style shortcuts.
; Run this script with AutoHotkey v2. The Win key behaves like macOS Command
; for common shortcuts, while Alt keeps a few Option-like text navigation habits.

SendMode "Input"
SetWorkingDir A_ScriptDir

MacSend(keys) {
    Send "{LWin up}{RWin up}" keys
}

AltSend(keys) {
    Send "{LAlt up}{RAlt up}" keys
}

; Prevent the Start menu from opening when Win is tapped by itself.
LWin::return
RWin::return

; ---------------------------------------------------------------------------
; Command-style shortcuts. These trigger when either physical Win key is held.
; ---------------------------------------------------------------------------

#HotIf GetKeyState("LWin", "P") || GetKeyState("RWin", "P")
c::MacSend "^c"         ; Command/Win+C: copy
v::MacSend "^v"         ; Command/Win+V: paste
x::MacSend "^x"         ; Command/Win+X: cut
a::MacSend "^a"         ; Command/Win+A: select all
z::MacSend "^z"         ; Command/Win+Z: undo
+z::MacSend "^y"        ; Command/Win+Shift+Z: redo
y::MacSend "^y"         ; Command/Win+Y: redo
s::MacSend "^s"         ; Command/Win+S: save
+s::MacSend "^+s"       ; Command/Win+Shift+S: save as
o::MacSend "^o"         ; Command/Win+O: open
n::MacSend "^n"         ; Command/Win+N: new window/document
p::MacSend "^p"         ; Command/Win+P: print
f::MacSend "^f"         ; Command/Win+F: find
g::MacSend "^g"         ; Command/Win+G: find next
+g::MacSend "^+g"       ; Command/Win+Shift+G: find previous
w::MacSend "^w"         ; Command/Win+W: close tab/document/window in most apps
+w::MacSend "!{F4}"     ; Command/Win+Shift+W: force close active window
q::MacSend "!{F4}"      ; Command/Win+Q: quit active app/window
m::WinMinimize "A"      ; Command/Win+M: minimize active window
h::WinMinimize "A"      ; Command/Win+H: hide/minimize active window
t::MacSend "^t"         ; Command/Win+T: new tab
+t::MacSend "^+t"       ; Command/Win+Shift+T: reopen closed tab
l::MacSend "^l"         ; Command/Win+L: focus address/location bar
r::MacSend "^r"         ; Command/Win+R: refresh/reload
+r::MacSend "^+r"       ; Command/Win+Shift+R: hard refresh
[::MacSend "!{Left}"    ; Command/Win+[: back
]::MacSend "!{Right}"   ; Command/Win+]: forward
SC029::MacSend "!{Esc}" ; Command/Win+`: cycle windows in z-order
Space::Run "ms-search:" ; Command/Win+Space: Spotlight-style search
Left::MacSend "{Home}"  ; Command/Win+Left: beginning of line
Right::MacSend "{End}"  ; Command/Win+Right: end of line
Up::MacSend "^{Home}"   ; Command/Win+Up: beginning of document
Down::MacSend "^{End}"  ; Command/Win+Down: end of document
+Left::MacSend "+{Home}" ; Command/Win+Shift+Left: select to line start
+Right::MacSend "+{End}" ; Command/Win+Shift+Right: select to line end
+Up::MacSend "^+{Home}" ; Command/Win+Shift+Up: select to document start
+Down::MacSend "^+{End}" ; Command/Win+Shift+Down: select to document end
Backspace::MacSend "+{Home}{Backspace}" ; Command/Win+Backspace: delete to line start
+3::MacSend "{PrintScreen}" ; Command/Win+Shift+3: full screenshot
+4::Run "ms-screenclip:" ; Command/Win+Shift+4: snipping tool
,::MacSend "^,"         ; Command/Win+Comma: preferences/settings in many apps
/::MacSend "{F1}"       ; Command/Win+/: help
Esc::MacSend "^{Esc}"   ; Command/Win+Esc: Start menu fallback
#HotIf

; Swap Windows' app switching keys.
!Tab::AltSend "#{Tab}"  ; Alt+Tab: task view, like Windows' original Win+Tab
!+Tab::AltSend "#+{Tab}" ; Alt+Shift+Tab: task view with Shift held
LWin & Tab::AltTab      ; Left Command/Win+Tab: classic app switcher
RWin & Tab::AltTab      ; Right Command/Win+Tab: classic app switcher

; Option-style word navigation. These use Alt because Windows keyboards place it
; closest to the macOS Option key.
!Left::Send "^{Left}"         ; Option+Left: previous word
!Right::Send "^{Right}"       ; Option+Right: next word
!+Left::Send "^+{Left}"       ; Option+Shift+Left: select previous word
!+Right::Send "^+{Right}"     ; Option+Shift+Right: select next word
!Backspace::Send "^{Backspace}" ; Option+Backspace: delete previous word
!Delete::Send "^{Delete}"     ; Option+Delete: delete next word

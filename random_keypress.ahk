#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode("Input")
CoordMode("Mouse", "Screen")

MsgBox("Script started.`nPress ESC to stop.`nPress Ctrl+Alt+P to pause/resume.")

paused := false

^!p::paused := !paused
Esc::ExitApp()

; Build key pool
keys := ["{Shift}", "{Enter}", "{Tab}", "{Ctrl}", "{Backspace}", " "]

; Add lowercase a-z multiple times (to increase probability)
Loop 26
{
    letter := Chr(96 + A_Index)  ; a-z
    keys.Push(letter)
    keys.Push(letter)
}

; Add A-Z once (less likely)
Loop 26
    keys.Push(Chr(64 + A_Index))  ; A-Z

; Add 0–9
Loop 10
    keys.Push(A_Index - 1)

; Add symbols
symbols := "!@#$%^&*()-_=+[]{};:',.<>/?\\|~"
Loop Parse symbols
    keys.Push(A_LoopField)

Loop
{
    if paused {
        Sleep(100)
        continue
    }

    ; Move mouse to a random screen location
    screenW := SysGet(78)
    screenH := SysGet(79)
    x := Random(0, screenW)
    y := Random(0, screenH)
    MouseMove(x, y, 0)

    ; Choose random action
    action := Random(1, 3)

    if action = 1 {
        key := keys[Random(1, keys.Length)]
        Send(key)
    }
    else if action = 2 {
        Click()
    }

    Sleep(200)
}
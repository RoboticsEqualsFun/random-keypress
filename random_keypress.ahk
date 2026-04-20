#Requires AutoHotkey v2.0
#Include config.ahk

;------------ Configure ------------
global running := true
global TotalWidth := SysGet(78)
global TotalHeight := SysGet(79)

delay := Config.pressDelay ; Time between actions
keyWeight := Config.keyWeight ; Probability of pressing a normal vs special key
weight := Config.weight ; Probability of pressing a key vs clicking the mouse

; Important saftey check to avoid disaster
if delay == 0 {
    MsgBox("Delay must be greater than 0!")
    ExitApp
}

; Get all the keys
specials := KeyConfig.specials
letters := KeyConfig.letters
symbols := KeyConfig.symbols
keys := []

; Add the symbols and letters toghether
for i, v in letters
    keys.Push(v)

for i, v in symbols
    keys.Push(v)

mouse := Config.mouse
speed := MouseConfig.speed
buttons := MouseConfig.buttons
maxClicks := MouseConfig.maxClicks

MsgBox "Random Keypress has started. Press ESC to stop. Press Ctrl + P to pause/resume."

;------------ Main processing ------------
while True
{
    if running {
        ; Randomly decide to press a key or mouse based on the weight
        if (Random(0, 1) > weight){
            ; Randomly decide whether to press a single or special key
            if (Random(0, 1) > keyWeight)
            {
                ; Press a random special key
                special := specials[Random(1, specials.Length)]
                Send(special)
            }
            else
            {
                ; Press a random single key
                key := keys[Random(1, keys.Length)]
                Send(key)
            }
        }
        else {
            if mouse {
                ; Randomly choose which button to press
                button := buttons[Random(1, buttons.Length)]
                ; Get a random posistion
                x := Random(0, TotalWidth)
                y := Random(0, TotalHeight)
                ; Get a random amount of clicks
                clickTimes := Random(1, maxClicks)
                
                MouseClick(button, x, y, clickTimes, speed)
            }
        }
    }

    ; Delay for allowing AHK to check for hotkeys, and for user expierence
    Sleep(delay)
}

;------------ Program control ------------

; Exits the program
Esc::{
    MsgBox "Exiting program..."
    ExitApp
}

; Flips the current state without exiting the program
^p::
{
    global running
    running := !running
    MsgBox (running ? "Resuming" : "Pausing") " program"
}
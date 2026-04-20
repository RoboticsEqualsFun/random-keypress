KeyConfig := {}
MouseConfig := {}
Config := {}

Config.pressDelay := 500 ; Time in milliseconds between key presses. IMPORTANT: Must be greater than 0!
Config.weight := 0.7 ; Probability of pressing a key instead of the mouse
Config.keyWeight := 0.7 ; Probability of pressing a normal key instead of a special key
Config.mouse := true

KeyConfig.specials := ["^c", "^v", "!tab", "#e", "#s", "{Enter}", "{Space}"]
KeyConfig.letters := ["a","b","c","d","e","f","g","h","i","j","k","l","m",
            "n","o","p","q","r","s","t","u","v","w","x","y","z"]
KeyConfig.symbols := [".", ",", "!", "?", ":", ";", "'", '`"', "-", "_",
            "(", ")", "[", "]", "{", "}", "+", "-", "*", "/",
            "=", "<", ">", "%", "^", "@", "#", "$", "&", "|",
            "~", "``", "…", "©", "®", "™"]


MouseConfig.maxClicks := 3
MouseConfig.speed := 2
MouseConfig.buttons := [
    "left", "right", "middle"
]
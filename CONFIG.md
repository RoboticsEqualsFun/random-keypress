# ⚙️ Configuration Guide

You can tweak your ~virus~ prank program to suit your preferences.

**⚠️ WARNING:** The config may look confusing at first, but it’s actually fairly simple once broken down.

## 📦 Overview

The configuration is split into three main sections:

1. **Config** → Core behavior settings
2. **Mouse** → Mouse-related behavior settings
3. **Keys** → All available keys and key combinations
   
## 1. ⚙️ Config (Core Settings)

This section controls the main behavior of the program.

🔹 `pressDelay`

Time between each key press or mouse click (in milliseconds).

**⚠️ Important:**
- Must be greater than `0`
- If set to `0` or lower, the program may stop working or crash
---

🔹 `weight`

Controls the probability of choosing a **keyboard action vs mouse action.**
- Higher value → more keyboard actions
- Lower value → more mouse actions
---

🔹 `keyWeight`

Controls the probability of selecting a **normal key vs a special key/combo.**

- Higher value → more normal keys
- Lower value → more special key combos
---
  
🔹 `mouse`

Enables or disables mouse clicking entirely.
- `true` → mouse clicks enabled
- `false` → mouse clicks disabled
---

## 2. 🖱️ Mouse Settings

This section controls how the mouse behaves.

🔹 `maxClicks`

The maximum number of mouse clicks allowed per action.

Example:
- `3` → up to 3 clicks per event
---

🔹 speed

Controls how fast the mouse moves.

⚠️ This value is **inverted:**

- `1` → instant teleport
- Higher numbers → slower movement
---

🔹 `buttons`

Array of allowed mouse buttons.

Common use:

- Left click
- Right click
- Middle click (scroll wheel)

💡 You usually don’t need to change this unless you want to remove specific buttons (for example, disabling scroll wheel clicks).

## 3. ⌨️ Keys

This section defines all possible keys and combinations the program can use.

They are grouped into categories:

---

🔹 `[Specials]`

Special keys and key combinations written in **AutoHotkey syntax.**

If you’re unsure how this works or want to add your own keys, refer to the official [documentation](https://www.autohotkey.com/docs/v1/KeyList.htm#modifier)

---

🔹 `[Letters]`

A list of all alphabet keys (A–Z).

---

🔹 `[Symbols]`

A list of all symbol keys (such as `!`, `@`, `#`, etc.).

---

## ✏️ How to Edit the Config

Follow these rules carefully when modifying the config.

### ❌ Do NOT
1. Change variable names
2. Change section/header names
3. Add new variables
4. Add new sections/headers

### ✅ Do
**🔹 Use correct data types:**
- **Booleans:** `true` / `false` (lowercase only)
- **Numbers:** e.g. `10`, `250`
- **Characters:** letters or symbols
---

**🔹 Adding keys to lists**

When adding a new entry to a key list:
- Use the next **available index number**
- Format like:  
`index = value`

Example:  

`5 = A`  
`6 = B`  

#### 🧠 Tip

If you're unsure about a setting, change one value at a time and test it. This helps avoid breaking the config.

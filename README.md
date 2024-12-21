# Method to create these shortcuts

## Windows:

### 1. Create folder with the batch files
Copy the CustomTerminalCommands folder to the location of your choice.

### 2. Add to Environment variables
Add the path to the above pasted folder in environment varibales PATH

### 3. Open VSCode with no project opened
Open the VSCode and if any project is opened then close it because it may conflict. Open the empty VSCode window.

### 4. Set keyboard shorcuts (JSON)
Press Ctrl+Shift+p and type "Preferences: Open Keyboard Shortcuts (JSON) and paste "keybinding.json" file in it.

### 5. Set VSCode tasks
Open the Command Palette (Ctrl+Shift+P) and type Tasks: Configure Default Build Task.
If prompted, select Create tasks.json file from template.
Select Others as the template.

paste "task.json" file in it.

### 6. Close and open VSCode
Restart VSCode to check the commands working.

1. Ctrl+Alt+g:
    for initiating git

2. Ctrl+Alt+z:
    for push to the branch
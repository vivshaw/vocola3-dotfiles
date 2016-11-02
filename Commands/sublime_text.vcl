# Voice commands for sublime_text

#Navigation in page
1..99 (Left | Right | Up | Down) = {$2_$1};
Line 1..100 = {Ctrl+g} $1 {Enter};
jump back = {Ctrl+Left};
jump front= {Ctrl+Right};
line start = {Home};
line end = {End};
jump to the end = {Ctrl+End};
Search for ={Ctrl+f};

#Selection in page
grab this = {Ctrl+r};
grab line = {Ctrl+l};
grab scope = {Ctrl+Shift+Space};
grab back = {Shift+Ctrl+Left};
grab front = {Shift+Ctrl+Right};
grab 1..20 = {Shift+Right_$1};

#Deletion
fry = {Backspace};
Back 1..99 = {Backspace_$1};
kill 1..99 = {Home}{Shift+Down_$1}{Backspace};

#Tab navigation
next tab = {Ctrl+PgDn};
last tab = {Ctrl+PgUp};
zap it = {Ctrl+w};

#Program shortcuts
save this = {Ctrl+s};

#Symbols and keys
flop = ";";
bang = {!};
crunch = "#";
slap = {Enter};
quotes = """";
zip = "-";
##Voice commands for sublime_text
#Variable declarations
<n> := 1..99;
<small_n> := 1..20;

#Navigation in page
Line 1..100 = {Ctrl+g} $1 {Enter};`
Line <n> Oh 1..9 = {Ctrl+g} $1 0 $2 {Enter};
Line <n> 10..99 = {Ctrl+g} $1 $2   {Enter};


#Selection in page
grab this = {Ctrl+r};
grab scope = {Ctrl+Shift+Space};


#Tab navigation
next tab = {Ctrl+PgDn};
last tab = {Ctrl+PgUp};
zap it = {Ctrl+w};
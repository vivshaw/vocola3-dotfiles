##Voice commands for sublime_text
#Variable declarations


#Navigation in page
Line 1..100 = {Ctrl+g} $1 {Enter};
Line 1..99 Oh 1..9 = {Ctrl+g} $1 0 $2 {Enter};
Line 1..99 10..99 = {Ctrl+g} $1 $2   {Enter};


#Selection in page
grab this = {Ctrl+r};
grab line = {Ctrl+l};
grab scope = {Ctrl+Shift+Space};


#Cut, copy, and paste
cut line = {Ctrl+l}{Ctrl+x};
Copy line = {Ctrl+l}{Ctrl+c};


#Tab navigation
next tab = {Ctrl+PgDn};
last tab = {Ctrl+PgUp};
zap it = {Ctrl+w};


#Program shortcuts
save this = {Ctrl+s};


##Programming grammar

#Context specific
$if .css;
	Comment 1..20 [Lines] = {Home}"/* "
		Repeat(Eval($1 - 1), {Down})
		{End}" */" {Up_$1};
$elseif .html;
	Comment 1..20 [Lines] = {Home}"<!-- "
		Repeat(Eval($1 - 1), {Down})
		{End}" -->" {Up_$1};
$elseif .java;
	Comment 1 [Line] = {Home}"// ";
	Comment 2..20 [Lines] = {Home}/*{Enter}
		Repeat(Eval($1 - 1), " * "{Down}{Home})
		" * "{End}{Enter}{Home}" */" {Up_$1};
$else
	Comment 1..20 [Lines] = Repeat($1, "{Home}#{Down}") {Up_$1};
$end

#HTML
div = "div";
span = "span";

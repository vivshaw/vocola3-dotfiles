##Voice commands for sublime_text
#Variable declarations
<n> := 1..99;
<small_n> := 1..20;

#Navigation in page
Line 1..100 = {Ctrl+g} $1 {Enter};
Line <n> Oh 1..9 = {Ctrl+g} $1 0 $2 {Enter};
Line <n> 10..99 = {Ctrl+g} $1 $2   {Enter};


#Selection in page
grab this = {Ctrl+r};
grab line = {Ctrl+l};
grab scope = {Ctrl+Shift+Space};
grab <small_n> (line | Lines) = {Ctrl+l}{Shift+Down_ Eval($1 - 1)};


#Cut, copy, and paste
<cut_copy> := (cut = "Ctrl+x" | copy = "Ctrl+c");
<cut_copy> line = {Ctrl+l}{$1};
<cut_copy> <small_n> (line | lines) = HearCommand("grab " $2 " line"){$1};


#Tab navigation
next tab = {Ctrl+PgDn};
last tab = {Ctrl+PgUp};
zap it = {Ctrl+w};


#Program shortcuts
save this = {Ctrl+s};


##Programming grammar

#Context specific
$if .css;
	Comment <small_n> [Lines] = {Home}"/* "
		Repeat(Eval($1 - 1), {Down})
		{End}" */" {Up_$1};
$elseif .html;
	Comment <small_n> [Lines] = {Home}"<!-- "
		Repeat(Eval($1 - 1), {Down})
		{End}" -->" {Up_$1};
$elseif .java;
	Comment 1 [Line] = {Home}"// ";
	Comment 2..20 [Lines] = {Home}/*{Enter}
		Repeat(Eval($1 - 1), " * "{Down}{Home})
		" * "{End}{Enter}{Home}" */" {Up_$1};
$else
	Comment <small_n> [Lines] = Repeat($1, "{Home}#{Down}") {Up_$1};
$end

#HTML
div = "div";
span = "span";

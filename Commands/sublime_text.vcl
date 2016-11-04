##Voice commands for sublime_text
#Variable declarations
<left_right> := Left | Right;
<direction>  := Left | Right | Up | Down;


#Navigation in page
<direction> 1..99 = {$1_$2};
Line 1..100 = {Ctrl+g} $1 {Enter};
Line 1..99 Oh 1..9 = {Ctrl+g} $1 0 $2 {Enter};
Line 1..99 10..99 = {Ctrl+g} $1 $2   {Enter};
jump <left_right> = {Ctrl+$1};
jump 1..20 <left_right> = {Ctrl+$2_$1};
jump 1..20 = {Ctrl+Right_$1};
line start = {Home};
line end = {End};
jump to the end = {Ctrl+End};
Search for = {Ctrl+f};
new line = {End}{Enter};


#Selection in page
grab this = {Ctrl+r};
grab line = {Ctrl+l};
grab scope = {Ctrl+Shift+Space};
grab 1..30 (line | Lines) = {Ctrl+l}{Shift+Down_ Eval($1 - 1)};
grab <left_right> = {Shift+Ctrl+$1};
grab 1..20 <left_right> = {Shift+Ctrl+$2_$1};
grab 1..20 = {Shift+Ctrl+Right_$1};
grab left end = {Shift+Home};
grab right end = {Shift+End};


#Deletion
scratch = {Backspace};
scratch 1..99 = {Backspace_$1};
scratch 1..20 (word | words) = {Shift+Ctrl+Left_$1}{Backspace};

Del = {Delete};
Del 1..99 = {Delete_$1};
Del 1..20 (word | words) = {Shift+Ctrl+Right_$1}{Del};

kill 1..99 = {Home}{Shift+Down_$1}{Backspace};


#Cut, copy, and paste
cut line = {Ctrl+l}{Ctrl+x};
Copy line = {Ctrl+l}{Ctrl+c};

#Tab navigation
next tab = {Ctrl+PgDn};
last tab = {Ctrl+PgUp};
zap it = {Ctrl+w};


#Program shortcuts
save this = {Ctrl+s};


#Symbols and keys
bang = {!};
cash = "$";
cent = "%";
colon = ":";
crunch = "#";
dash = "-";
eek = "=";
dot = ".";
pipe = "|";
plus = "+";
quick = "?";
sand = "&";
score = "_";
sem = ";";
slash = "/";
space = " ";
star = "*";
swipe = ",";
tick = "`";
zip = "\";


#Matched symbols (parentheses and braces)
Quote = """";

Bing = "'";

Paren = "()"{Left};
left paren = "(";
right paren = ")";

brace = "{}"{Left};
left brace = "{";
right brace = "}";

bracks = "<>"{Left};
late = "<";
rate = ">";

squares = "[]"{Left};
left square = "[";
right square = "]";


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

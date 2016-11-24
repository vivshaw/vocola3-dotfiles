##Global voice commands for programming
#Variable declarations
<n> := 1..99;
<small_n> := 1..20;


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
	Comment <small_n> [Lines] = Repeat($1, "{Home}# {Down}") {Up_$1};
$end

#HTML
div = "div";
span = "span";
tis = '=""'{Left};
make a link = '<a href=""></a>'{Left_6};

<para> := (pair = "<p>" | end pair = "</p>");
paragraph = "<p></p>"{Left_5};

text input = '<input type="text">';
make an image = '<img src="">'{Left_2};
unordered list = "<ul></ul>"{Left_5};
ordered list = "<ol></ol>"{Left_5};
list item = "<li></li>"{Left_5};


<form> := (form = '<form action=""></form>'
	| form left = '<form action="">'
	| form right = '</form>');
make a <form> = $1;
wrap form = wrap('<form action="">', '</form>')
			{Home}{Right_14};

<button> := (button left = '<button type="">'
	| button right = '</button>');
wrap button = wrap('<button type="">', '</button>')
	{Home}{Right_14};

label = '<label></label>'{Left_8};

input() := '<input type="" name="">'{Left_10};
<input_type> := (radio | checkbox | button);
make an input = input();
input <input_type> = input() $1 {Right_8};

<tag> := <para>;
wrap(x, y) := {Ctrl+x} Wait(30) $x 
			{Ctrl+v} Wait(30) $y;
wrap <tag> <tag> = wrap($1, $2);


uncomment <small_n> lines = Repeat($1, {Home}{Del_2}{Down});

quiv = " == ";
whack = {End}";"{Enter};
define as = " := ";
or = " || ";
less than = " <= ";
greater than = " >= ";
submit = {Ctrl+Enter};

# js
function = "function ";
# four = "for ()"{Left};
# if = "if ()"{Left};
funk body = {End}" {}"{Left}{Enter};

# py
print = "print()"{Left};
define = "def ";
function <_anything> = "def " $1 "()"{Left};
deaf = ": ";
vow = "val";
new file = {Ctrl+N};
run it = {F5};

# js, python, java
return = "return ";

get have = "GitHub";

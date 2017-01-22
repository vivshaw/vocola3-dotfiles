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
tis = '=""'{Left};

<div> := (div = "<div>" | end div = "</div>");
make a div = "<div></div>"{Left_6};

span = "span";

make a link = '<a href=""></a>'{Left_6};

head 1..6 = "<h" $1 "></h" $1 ">"{Left_5};

<para> := (pair = "<p>" | end pair = "</p>");
paragraph = "<p></p>"{Left_5};

text input = '<input type="text">';
make an image = '<img src="">'{Left_2};
unordered list = "<ul></ul>"{Left_5};
ordered list = "<ol></ol>"{Left_5};
list item = "<li></li>"{Left_5};
oomph = "<em></em>"{Left_5};

<form> := (form = '<form action=""></form>'
	| form left = '<form action="">'
	| form right = '</form>');
make a <form> = $1;
wrap form = wrap('<form action="">', '</form>')
			{Home}{Right_14};

<button> := (button = '<button type="">'
	| end button = '</button>');
wrap button = wrap('<button type="">', '</button>')
	{Home}{Right_14};

label = '<label></label>'{Left_8};

input() := '<input type="" name="">'{Left_10};
<input_type> := (radio | checkbox | button);
make an input = input();
input <input_type> = input() $1 {Right_8};

<wrap_tag> := <div> | <para> | <row>;
wrap(x, y) := {Ctrl+x} Wait(30) $x 
			{Ctrl+v} Wait(30) $y;
wrap <wrap_tag> <wrap_tag> = wrap($1, $2);
<make_tag> := <boot_button> | <button>;
make <make_tag> = $1;

#bootstrap
<row> := (row = '<div class="row">' | end row = '</div>');
<boot_button> := (boot button = "btn"
	| button block = "btn-block"
	| button primary = "btn-primary"
	| button info = "btn-info"
	| button danger = "btn-danger"
	| button default = "btn-default");
column medium = "col-md-";
column excess = "col-xs-";
thumbs up icon = "fa-thumbs-up";
info circle icon = "fa-info-circle";
trash icon = "fa-trash";
paper plane icon = "fa-paper-plane";

uncomment <small_n> lines = Repeat($1, {Home}{Del_2}{Down});

quiv = " == ";
whack = {End}";"{Enter};
finish = {End} ";";
comp = {End}";";
define as = " := ";
or = " || ";
also = " && ";
less than = " < ";
greater than = " > ";
less than eek = " <= ";
greater than eek = " >= ";
aero = " -> ";
dupe = {End} ";";
submit = {Ctrl+Enter};

# js
function = "function ";
# four = "for ()"{Left};
# if = "if ()"{Left};
funk body = {End}" {}"{Left}{Enter};

# jQuery
add class = addClass;
and child = "nth-child";

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

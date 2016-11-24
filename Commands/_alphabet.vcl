##Global phonetic alphabet
<alpha> := (Arch = a
	| Bravo = b
	| Charlie = c
	| Delta = d
	| Echo = e
	| Fox = f
	| Golf = g
	| Hotel = h
	| India = i
	| Julie = j
	| Kilo = k
	| Lake = l
	| Mike = m
	| Norma = n
	| Oscar = o
	| Papa = p
	| Queen = q
	| Romeo = r
	| Sigma = s
	| Tango = t
	| Uni = u
	| Victor = v
	| Whiskey = w
	| X-ray = x
	| Yankee = y
	| Zulu = z);


#Letters

<alpha> = $1;
sky <alpha> = {Shift+$1};


#Numbers
eins = "1";
tsvai = "2";
dry = "3";
fear = "4";
funf = "5";
zecks = "6";
z ben = "7";
acht = "8";
knowing = "9";
Newell = "0";


#Symbols and keys
bang = {!};
cash = "$";
cent = "%";
crunch = "#";
dish = "-";
dash = " - ";
dot = ".";
eek = "=";
qual = " = ";
face = ":";
hat = "^";
pip = "|";
pipe = " | ";
plus = "+";
ploose = " + ";
quick = "?";
sand = "&";
score = "_";
sem = ";";
slish = "/";
slash = " / ";
star = "*";
stare = " * ";
swip = ",";
swipe = ", ";
tick = "`";
zip = "\";


#Matched symbols (parentheses and braces)
Quote = '"';
Quotes = '""'{Left};

Bing = "'";
Bings = "''"{Left};

Paren = "()"{Left};
left paren = "(";
right paren = ")";
paroo = "()";

brace = "{}"{Left};
left brace = "{";
right brace = "}";

brack = "<>"{Left};
late = "<";
rate = ">";

square = "[]"{Left};
left square = "[";
right square = "]";

#Combo symbols
prexter = '("")'{Left}{Left};
praise it = '({})'{Left}{Left};
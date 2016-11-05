##Global voice commands
#Variable declarations
<n> := 1..99;
<small_n> := 1..20;
<left_right> := Left | Right;
<direction>  := Left | Right | Up | Down;
<direction_two> := (rick = right
	| dune = down);
<start_end> := (start = Home | End);


#Phonetic alphabet
Arch = {a};
Bravo = {b};
Charlie = {c};
Delta = {d};
Echo = {e};
Fox = {f};
Golf = {g};
Hotel = {h};
India = {i};
Julie = {j};
Kilo = {k};
Lake = {l};
Mike = {m};
Norma = {n};
Oscar = {o};
Papa = {p};
Queen = {q};
Romeo = {r};
Sigma = {s};
Tango = {t};
Uni = {u};
Victor = {v};
Whiskey = {w};
X-ray = {x};
Yankee = {y};
Zulu = {z};

Sky Arch = {A};
Sky Bravo = {B};
Sky Charlie = {C};
Sky Delta = {D};
Sky Echo = {E};
Sky Fox = {F};
Sky Golf = {G};
Sky Hotel = {H};
Sky India = {I};
Sky Julie = {J};
Sky Kilo = {K};
Sky Lake = {L};
Sky Mike = {M};
Sky Norma = {N};
Sky Oscar = {O};
Sky Papa = {P};
Sky Queen = {Q};
Sky Romeo = {R};
Sky Sigma = {S};
Sky Tango = {T};
Sky Uni = {U};
Sky Victor = {V};
Sky Whiskey = {W};
Sky X-ray = {X};
Sky Yankee = {Y};
Sky Zulu = {Z};


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
dash = "-";
dot = ".";
eek = "=";
face = ":";
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
Quote = '"';

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


#Keystrokes
Ta = {Space};
Act = {Esc};
Slap = {Enter};
Slap <small_n> = {Enter_$1};


#Navigation
<direction> <n> = {$1_$2};
<direction_two> = {$1};
<direction_two> <n> = {$1_$2};
jump <left_right> = {Ctrl+$1};
jump <small_n> <left_right> = {Ctrl+$2_$1};
jump <small_n> = {Ctrl+Right_$1};
line <start_end> = {$1};
jump to the <start_end> = {Ctrl+$1};
new line = {End}{Enter};


#Selection
grab <small_n> (line | Lines) = {Ctrl+l}{Shift+Down_ Eval($1 - 1)};
grab <left_right> = {Shift+Ctrl+$1};
grab <small_n> <left_right> = {Shift+Ctrl+$2_$1};
grab <small_n> = {Shift+Ctrl+Right_$1};
grab left end = {Shift+Home};
grab right end = {Shift+End};


#Deletion
scratch = {Backspace};
scratch <n> = {Backspace_$1};
scratch <small_n> (word | words) = {Shift+Ctrl+Left_$1}{Backspace};

Del = {Delete};
Del <n> = {Delete_$1};
Del <small_n> (word | words) = {Shift+Ctrl+Right_$1}{Del};

kill <n> = {Home}{Shift+Down_$1}{Backspace};


#Case and spacing
Sky = If(Dictation.CanGet(),
	Dictation.Replace(String.ToggleInitialCase(Dictation.Get())),
	{Ctrl+Shift+Left}{Ctrl+c} String.ToggleInitialCase(Clipboard.GetText()));
Fix Space = Dictation.Replace(String.ToggleInitialSpace(Dictation.Get()));
Huge = Dictation.Replace( String.Capitalize( Dictation.Get() ));
Huge 1..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.Capitalize(Clipboard.GetText());
Yell = If(Dictation.CanGet(),
	Dictation.Replace(String.ToUpper(Dictation.Get())),
	{Ctrl+Shift+Left}{Ctrl+c} String.ToUpper(Clipboard.GetText()));
Yell 1..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.ToUpper(Clipboard.GetText());
Lower That = Dictation.Replace(String.ToLower(Dictation.Get()));
Lower 1..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.ToLower(Clipboard.GetText());
Book = Dictation.Replace(String.ToTitleCaseWord(Dictation.Get()));
Book 2..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.ToTitleCaseWord(Clipboard.GetText());
Camel = Dictation.Replace( String.ToCamelCaseWord( Dictation.Get() ));
Camel 2..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.ToCamelCaseWord(Clipboard.GetText());
Spine = Dictation.Replace(String.JoinWords(Dictation.Get(), "-"));
Spine 2..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.JoinWords(Clipboard.GetText(), "-");
Snake = Dictation.Replace(String.JoinWords(Dictation.Get(), "_"));
Snake 2..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.JoinWords(Clipboard.GetText(), "_");
Slam = Dictation.Replace(String.JoinWords(Dictation.Get(), ""));
Slam 2..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.JoinWords(Clipboard.GetText(), "");


#Window manipulation
Swap Out = {Alt+Tab};
Search for = {Ctrl+f};
Window <left_right> = Window.MoveToScreenEdge($1);
Launch <_startableName> = HearCommand("start $1");
click this = {LeftButton};

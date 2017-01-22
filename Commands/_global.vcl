##Global voice commands

#Variable declarations
<n> := 1..99;
<small_n> := 1..20;

<left_right> := Left | Right;
<direction>  := Left | Right | Up | Down;
<direction_two> := (rick = right
	| lop = left
	| uck = up
	| doom = down);

<start_end> := (start = Home | End);

<abbreviations> := (argument = args
	| attribute = attr
	| define = def
	| function = func
	| image = img
	| integer = int
	| length = len
	| line = ln
	| pixel = px
	| sequence = seq
	| string = str
	| variable = var);


#Navigation
<direction_two> = {$1};
(<direction> | <direction_two>) <n> = {$1_$2};
(<direction> | <direction_two>) oh = {Shift+$1};
jump <left_right> = {Ctrl+$1};
jump <small_n> <left_right> = {Ctrl+$2_$1};
jump <small_n> = {Ctrl+Right_$1};
line <start_end> = {$1};
jump <start_end> = {Ctrl+$1};
(righty | ricky) = {end};
(lefty | lobby) = {home};
(up | ug) way = {Ctrl+Home};
(down | doom) way = {Ctrl+End};
new line = {End}{Enter};


#Selection
grab <left_right> = {Shift+Ctrl+$1};
grab <small_n> <left_right> = {Shift+Ctrl+$2_$1};
grab <small_n> = {Shift+Ctrl+Right_$1};
grab left end = {Shift+Home};
grab right end = {Shift+End};
grab line = {Home}{Shift+End}{Shift+Right};
grab <small_n> (line | Lines) = {Home}{Shift+End}{Shift+Right}{Shift+Down_ Eval($1 - 1)};


#Deletion
scratch = {Backspace};
scratch <n> = {Backspace_$1};
scratch <small_n> (word | words) = {Shift+Ctrl+Left_$1}{Backspace};
bop = {Shift+Ctrl+Left}{Backspace};
Del = {Delete};
Del <n> = {Delete_$1};
Del <small_n> (word | words) = {Shift+Ctrl+Right_$1}{Del};
kill <n> = {Home}{Shift+Down_$1}{Backspace};


#Cut, copy, and paste
<cut_copy> := (cut = "Ctrl+x" | copy = "Ctrl+c" | cop = "Ctrl+c");
<cut_copy> line = {Home}{Shift+End}{Shift+Right}{$1}{Home};
<cut_copy> <small_n> (line | lines) = HearCommand("grab " $2 " line"){$1}{Home};


#Case and spacing
Sky = If(Dictation.CanGet(),
	Dictation.Replace(String.ToggleInitialCase(Dictation.Get())),
	{Ctrl+Shift+Left}{Ctrl+c} String.ToggleInitialCase(Clipboard.GetText()));
Cap = {Ctrl+Shift+Left} {Ctrl+c} String.Capitalize(Clipboard.GetText());
Fix Space = Dictation.Replace(String.ToggleInitialSpace(Dictation.Get()));
Huge = Dictation.Replace( String.Capitalize( Dictation.Get() ));
Huge 1..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.Capitalize(Clipboard.GetText());
Yell = If(Dictation.CanGet(),
	Dictation.Replace(String.ToUpper(Dictation.Get())),
	{Ctrl+Shift+Left}{Ctrl+c} String.ToUpper(Clipboard.GetText()));
Yell 1..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.ToUpper(Clipboard.GetText());
Small That = Dictation.Replace(String.ToLower(Dictation.Get()));
Small 1..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.ToLower(Clipboard.GetText());
Book = Dictation.Replace(String.ToTitleCaseWord(Dictation.Get()));
Book 2..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.ToTitleCaseWord(Clipboard.GetText());
Camel = Dictation.Replace( String.ToCamelCaseWord( Dictation.Get() ));
Camel 2..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.ToCamelCaseWord(Clipboard.GetText());
Spine = Dictation.Replace(String.JoinWords(Dictation.Get(), "-"));
Spine 2..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.JoinWords(Clipboard.GetText(), "-");
Snake = Dictation.Replace(String.JoinWords(Dictation.Get(), "_"));
Snake 2..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.JoinWords(Clipboard.GetText(), "_");
Dottie = Dictation.Replace(String.JoinWords(Dictation.Get(), "."));
Dottie 2..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.JoinWords(Clipboard.GetText(), ".");
Slam = Dictation.Replace(String.JoinWords(Dictation.Get(), ""));
Slam 2..9 = {Ctrl+Shift+Left_$1}{Ctrl+c} String.JoinWords(Clipboard.GetText(), "");


#Abbreviation
snip <abbreviations> = $1;
snipe <abbreviations> = $1 " ";


#Window manipulation
Swap Out = {Alt+Tab};
Search for = {Ctrl+f};
Window <left_right> = Window.MoveToScreenEdge($1);
Launch <_startableName> = HearCommand("start $1");


#Program shortcuts
save this = {Ctrl+s};


$if Open | New | Save | File | Attachment | Browse | Directory ;
  Go Up = ..{Enter};
  Go Up <n> = Repeat($1, ..\) {Enter};
$end


#Mouse
chip = {LeftButton};
dubs = {LeftButton}{LeftButton};
trips = {LeftButton}{LeftButton}{LeftButton};
rips = {RightButton};
mids = {MiddleButton};
hold = {LeftButton_Hold};
unhold = {LeftButton_Release};


#Miscellaneous keystrokes
Ta = {Space};
Act = {Esc};
Slap = {Enter};
Slap <small_n> = {Enter_$1};
close = {Alt+F4};
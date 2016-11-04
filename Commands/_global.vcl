# Global voice commands

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


#Keystrokes
Ta = {Space};
Act = {Esc};
Slap = {Enter};
Slap 1..10 = {Enter_$1};


#Navigation
Rick = {Right};
Dune = {Down};


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
Window Left = Window.MoveToScreenEdge(Left);
Window Right = Window.MoveToScreenEdge(Right);
Swap Out = {Alt+Tab};
Launch <_startableName> = HearCommand("start $1");
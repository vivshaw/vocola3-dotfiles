# Voice commands for idea

#Import & abbreviations
Kong = com;
org = org;
I owe = io;
see as the = csv;
you tell = "util";


#Types
string builder = "StringBuilder ";

<primitive> := (bool | char | double | int | float);
<type> := (<primitive>
		  | string = "String");

<type> = $1 " ";
<type> array = $1 "[] ";


<generic_single> := (are a list = ArrayList
					| hash set = HashSet);
<generic_double> := (hash map = HashMap);
<generic> := 		(<generic_single>
			 		| <generic_double>);
<wrapper_class> := ((integer | int) = Integer
				    | string = String
				    | (char | Character) = Character);

<generic> = $1 "<>" {Left};
<generic_single> <wrapper_class> = $1 "<>" {Left} $2 {Right} " ";
<generic_double> <wrapper_class> <wrapper_class> = $1 "<>" {Left} $2 ", " $3 {Right} " ";


#Control flow
if = "if ()" {Left};
(for | four) = "for ()" {Left};
switch = "switch ()" {Left};
case = "case ";


#Method & Class Building
funk = "()" {Left};
body = {End} " {}" {Left} {Enter};


#Common methods
sub string = "substring";

#IDEA specific
run this = {Shift+F10};
generate constructor = {Alt+Insert} {Enter};

#Leverage autocomplete
sout = "sout" {Tab};
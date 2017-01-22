# Voice commands for bluej

Kong = com;
org = org;
I owe = io;
see as the = csv;and
if = "if ()" {Left};
for = "for ()" {Left};
four = "for ()" {Left};
sout = "System.out.println()" {Left};
funk = "()" {Left};
string = "String ";
int = "int ";
ink = "++";
deck = "--";
char = "char ";
string builder = "StringBuilder ";
sub string = "substring";
you tell = "util";


<generic_single> := (are a list = ArrayList
					| hash set = HashSet);
<generic_double> := (hash map = HashMap);
<generic> := 		(<generic_single>
			 		| <generic_double>);
<wrapper_class> := ((integer | int) = Integer
				    | string = String
				    | char = Character);

<generic> = $1 "<>" {Left};
<generic_single> <wrapper_class> = $1 "<>" {Left} $2 {Right} " ";
<generic_double> <wrapper_class> <wrapper_class> = $1 "<>" {Left} $2 ", " $3 {Right} " ";


<type> := (int
			   | char
			   | string = "String"
			   | double
			   | float);
<type> array = $1 "[] ";


#fix some annoyances with bluej's indentation
fix blue jay = {Enter}{Up}{Tab};
fix it more = {Enter}{Backspace_3}{Up}{Tab};

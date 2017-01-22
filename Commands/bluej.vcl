# Voice commands for bluej

#Import Java grammar
$include Languages/java_lang.vcl;


#Miscellaneous
sout = "System.out.println()" {Left};


#fix some annoyances with bluej's indentation
fix blue jay = {Enter}{Up}{Tab};
fix it more = {Enter}{Backspace_3}{Up}{Tab};

# vocola3-dotfiles
This is my grammar for [voice programming](http://vocola.net/programming-by-voice-FAQ.html) using Windows Speech Recognition and the [Vocola 3 voice command language](http://vocola.net/default.asp). This project started because I developed nerve
injuries in my wrists and elbows that prevented me from coding for a long time. But after seeing projects like [VoiceCode.io](VoiceCode.io), [Aenea](https://github.com/dictation-toolbox/aenea),
[Silvius](http://voxhub.io/silvius), and [Tavis Rudd's project](http://ergoemacs.org/emacs/using_voice_to_code.html), I decided to write my own grammar and try voice programming. At the moment,
this grammar covers everyday Windows use, Java, Python, some basic web & JS code, and some CLI input. I will likely migrate to a Dragon-based solution like Dragonfly at some point, but in the meanwhile, I figured that my grammar might be useful to others who don't have Dragon, so I might as well polish it as best I can and put it on GitHub.

This grammar is still in heavy development, and is rather a mess at the moment. I'll be updating this readme with a description of the grammar structure & commands as I implement them.

##Grammar structure
###Global grammar
* Commands\\\_global.vcl - contains global commands
* Commands\\\_alphabet.vcl - contains alphabet and symbols
* Commands\\\_programming.vcl - contains commands useful for coding across languages
* Commands\\\_bugn.vcl - contains commands for interacting with the [bug.n tiling window manager](https://github.com/fuhsjr00/bug.n)

These grammars are loaded on startup and active in all programs. You can tell which ones are global 'cause they start with an underscore.

###App grammars
* All other files in Commands\\

These grammars are loaded when the associated program opens, are active only in that program, and are unloaded when the program closes.  I use these to hold program-specific commands, such as voice commands that map to bash commands, or to program shortcuts for my IDEs. I also use them to load the appropriate  programming language grammar when I open an IDE for that language.

###Programming language grammars
* All files in Commands\\Languages\\

Each of these files is a grammar for a programming language or major library. They are dynamically loaded by the program grammars for the IDEs that I use for each language. I am still working on refactoring each individual language out of the global programming grammar and the program grammars and into their own files.

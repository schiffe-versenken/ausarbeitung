# Erstellen der Ausarbeitung mit Versionsinfo
Damit die Versionsinfo korrekt erstellt wird muss pdflatex mit dem Parameter -shell-escape aufgerufen werden.

Falls make oder TeXstudio wird, ist diese Option direkt gesetzt. 

Für TeXworks muss in der Datei %LOCALAPPDATA%\MiKTeX\2.9\TeXworks\0.6\configuration\tools.ini folgender Eintrag ergänzt werden 
(die Zahl bitte anpassen):

```
[016]
name=pdfLaTeX (-shell-escape)+MakeIndex+BibTeX
program=texify.exe
arguments=--pdf, "--synctex=1", "--tex-option=-shell-escape", $fullname
showPdf=true
```

Falls ein anderer Editor verwendet wird, muss die Option manuell gesetzt werden.
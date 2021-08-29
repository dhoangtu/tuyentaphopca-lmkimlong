
@ECHO ON

set GEN=".\pdf-generated"

pdftk D:\01.lilypond\01.github\tuyentaphopca-lmkimlong\nhac\*.pdf cat output nhac.pdf

pdflatex so-trang-chan-le.tex

pdftk bia-truoc.pdf blank-a4.pdf so-trang-chan-le.pdf blank-a4.pdf bia-sau-trong.pdf cat output tuyentaphopca-lmkimlong.pdf

del /s /f /q %GEN% nhac.pdf *.aux *.log so-trang-chan-le.pdf


@ECHO ON

set GEN=".\pdf-generated"

D:\download\qpdf-10.1.0\bin\qpdf --empty --pages D:\01.lilypond\01.github\tuyentaphopca-lmkimlong\nhac-2\*.pdf -- nhac.pdf
pdflatex so-trang-chan-le.tex

rem D:\download\qpdf-10.1.0\bin\qpdf --empty --pages so-trang-chan-le.pdf -- tuyentaphopca-lmkimlong.pdf

D:\download\qpdf-10.1.0\bin\qpdf --empty --pages bia-truoc.pdf blank-a4.pdf so-trang-chan-le.pdf blank-a4.pdf bia-sau-trong.pdf bia-sau.pdf -- tuyentaphopca-lmkimlong.pdf

del /s /f /q %GEN% nhac.pdf *.aux *.log so-trang-chan-le.pdf
pause

all:
	pandoc report.md -o report.pdf --pdf-engine=xelatex
	pandoc report.md -o report.docx

clean:
	rm -f report.pdf report.docx

cleanall: clean
	rm -rf _output


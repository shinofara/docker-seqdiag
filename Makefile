%: 
	mkdir -p pdf
	docker run --rm \
	-v ${PWD}:/work \
	tools/diag seqdiag \
	-Tpdf diag/${@}.diag \
	-o pdf/${@}.pdf
#	-f /Users/yukishinohara/Library/Fonts/apple-tp_thin.ttf 
	@echo createed ${@}.pdf  

build:
	docker build -t tools/diag .

clean:
	rm -f pdf/*.pdf

all: index.html

index.html:
	asciidoctor index.adoc

clean:
	${RM} index.html

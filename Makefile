open: workflow.pdf
	open workflow.pdf

workflow.pdf: workflow.md graph1.pdf
	pandoc workflow.md -o workflow.pdf --latex-engine xelatex --listings

workflow.html: workflow.md graph1.pdf
	pandoc workflow.md -o workflow.html --highlight-style pygments

graph1.pdf: graph1.dot
	dot graph1.dot -Gdpi=50 -Tpdf -o graph1.pdf

clean:
	rm graph1.pdf workflow.pdf workflow.html
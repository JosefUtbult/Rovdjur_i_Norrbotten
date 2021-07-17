build_target:
	rm -rf build
	mkdir build

	# Build twice to get all references correctly
	cd doc; \
	pdflatex -output-directory=../build RovdjurINorrbotten.tex; \
	pdflatex -output-directory=../build RovdjurINorrbotten.tex;

clean:
	rm build/*.aux build/*.log build/*.out build/*.toc

view:
	firefox build/RovdjurINorrbotten.pdf

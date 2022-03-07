COMPILER := pdflatex

build_target:
	rm -rf build
	mkdir build

	# Build twice to get all references correctly
	cd doc; \
	$(COMPILER) -output-directory=../build RovdjurINorrbotten.tex; \
	$(COMPILER) -output-directory=../build RovdjurINorrbotten.tex;


clean:
	rm build/*.aux build/*.log build/*.out build/*.toc

view:
	firefox build/RovdjurINorrbotten.pdf

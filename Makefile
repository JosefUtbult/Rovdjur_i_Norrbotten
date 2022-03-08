COMPILER := pdflatex

build_target:
	python CampaignGenerator/src/app.py -s cocs -H -o build/RovdjurINorrbotten.html doc/RovdjurINorrbotten.md

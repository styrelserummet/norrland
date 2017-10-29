all: norrland.epub norrland.pdf
norrland.epub: norrland.md
	pandoc $< -o $@
norrland.pdf: norrland.md
	pandoc $< -o $@

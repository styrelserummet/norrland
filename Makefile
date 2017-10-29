all: stava norrland.epub
norrland.epub: norrland.md
	pandoc $< -o $@
norrland.pdf: norrland.md
	pandoc $< -o $@
stava: norrland.md ordlista.aspell
	aspell --lang=sv --home-dir=. --personal=ordlista.aspell --pipe < $<
clean:
	@touch norrland.epub norrland.pdf
	@rm -f norrland.epub norrland.pdf

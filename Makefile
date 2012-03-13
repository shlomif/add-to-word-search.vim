all:

BASENAME = add-to-word-search
VERSION = 0.2.1

NAME = $(BASENAME)-$(VERSION)
ZIP_FILE = $(NAME).zip

zip: $(ZIP_FILE)

FILES = doc/add-to-word-search.txt plugin/add-to-word-search.vim README.pod Rakefile Makefile

$(ZIP_FILE): $(FILES)
	mkdir -p $(NAME)
	for f in $(FILES) ; do mkdir -p "$(NAME)/$$(dirname "$$f")" ; cp "$$f" "$(NAME)/$$f" ; done
	rm -f $@
	zip -r $@ $(NAME)
	rm -fr $(NAME)

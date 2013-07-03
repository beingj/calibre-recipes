IN=infoq.recipe
EXT=.mobi
OUT=$(basename $(IN))$(EXT)

all: view

$(OUT): $(IN)
	# ebook-convert $(IN) $(OUT) --test -vv --debug-pipeline debug
	ebook-convert $(IN) $(OUT) -vv --debug-pipeline debug

view: $(OUT)
	# calibre-debug -w $(OUT)
	ebook-viewer $(OUT)

IN=linuxtoy.recipe
EXT=.mobi
OUT=$(basename $(IN))$(EXT)

# all: view
all: $(OUT)

$(OUT): $(IN)
	# ebook-convert $(IN) $(OUT) --test -vv --debug-pipeline debug
	ebook-convert $(IN) $(OUT) -vv --debug-pipeline debug | tee debug.log

view: $(OUT)
	# calibre-debug -w $(OUT)
	ebook-viewer $(OUT)

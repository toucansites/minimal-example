SHELL=/bin/bash

# brew install optipng jpegoptim

dev:
	toucan generate ./src ./dist --base-url http://localhost:3000/

watch:
	toucan watch ./src ./dist --base-url http://localhost:3000/

serve:
	toucan serve ./dist -p 3000

png:
	find ./src/* -type f -name '*.png' -exec optipng -o7 {} \;

jpg:
	find ./src/* -type f -name '*.jpg' | xargs jpegoptim --all-progressive '*.jpg'

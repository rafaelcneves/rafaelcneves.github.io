build:
	docker run --rm -it -v "${PWD}":/srv/jekyll jekyll/jekyll:latest jekyll build
serve:
	docker run --rm -it -v "${PWD}":/srv/jekyll -p "4001:4000" jekyll/jekyll:latest jekyll serve

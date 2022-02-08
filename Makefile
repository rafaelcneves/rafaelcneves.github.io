setup:
	docker run --rm -it -v "${PWD}":/srv/jekyll -e GEM_HOME="/srv/jekyll/.gems" jekyll/jekyll:latest bundle install
build:
	docker run --rm -it -v "${PWD}":/srv/jekyll -e GEM_HOME="/srv/jekyll/.gems" jekyll/jekyll:latest jekyll build
serve:
	docker run --rm -it -v "${PWD}":/srv/jekyll -p "4000:4000" -e GEM_HOME="/srv/jekyll/.gems" jekyll/jekyll:latest jekyll serve

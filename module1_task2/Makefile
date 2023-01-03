build: ## build the website
	hugo > /dev/null 2>&1

clean: ## clean the site
	rm -rf dist

post: ## post something to the site
	hugo new posts/$(POST_NAME).md
	sed -i '/title/c\title: "${POST_TITLE}"' content/posts/${POST_NAME}.md

help: ## if you need help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
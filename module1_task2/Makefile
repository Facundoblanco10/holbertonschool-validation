build: # build the website #
	hugo > /dev/null 2>&1

clean: # clean the site #
	rm -rf dist

post: # post something to the site #
	hugo new posts/$(POST_NAME).md
	sed -i '/title/c\title: "${POST_TITLE}"' content/posts/${POST_NAME}.md

help: # if you need help #
	@echo "Available targets:"
	@echo "	build: to build a new website"
	@echo "	clean: to clean the site"
	@echo "	post: to post in the site"
	@echo "	help: to help"
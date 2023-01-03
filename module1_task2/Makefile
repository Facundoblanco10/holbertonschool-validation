build:
	hugo > /dev/null 2>&1

clean:
	rm -rf dist

post:
	hugo new posts/$(POST_NAME).md
	sed -i '/title/c\title: "${POST_TITLE}"' content/posts/${POST_NAME}.md

help:
	@echo "Available targets:"
	@echo "	build: to build a new website"
	@echo "	clean: to clean the site"
	@echo "	post: to post in the site"
	@echo "	help: to help"

# VARIABLES

# # general
BUILD_TOOL := ./mvnw
NAME := spring-framework-sample
CURRENT_FOLDER := $(shell pwd)
# # makefile
.PHONY: help
.DEFAULT_GOAL := help


# FUNCTIONS

# # building

dependencies :		## Show dependency tree
	$(BUILD_TOOL) dependency:tree -Dverbose

clean :		## Clean the application
	$(BUILD_TOOL) clean

compile :		## Compile the application
	$(BUILD_TOOL) compile

package :		## Build the application package including unit tests only
	$(BUILD_TOOL) -DfailIfNoTests=false package


# # running

run : package		## Run application in Jetty
	cp target/$(NAME).war jetty-webapps/
	docker run -ti --rm --name jetty -v $(CURRENT_FOLDER)/webapps:/var/lib/jetty/webapps -e JAVA_OPTIONS='-Xmx512g' -p 8080:8080 -p 8443:8443 jetty:alpine


# # general

help :		## Help
	@echo ""
	@echo "*** $(NAME) Makefile help ***"
	@echo ""
	@echo "Targets list:"
	@grep -E '^[a-zA-Z_-]+ :.*?## .*$$' $(MAKEFILE_LIST) | sort -k 1,1 | awk 'BEGIN {FS = ":.*?## "}; {printf "\t\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	@echo ""

print-variables :		## Print variables values
	@echo "- - - makefile - - -"
	@echo "MAKE: $(MAKE)"
	@echo "MAKEFILES: $(MAKEFILES)"
	@echo "MAKEFILE_LIST: $(MAKEFILE_LIST)"
	@echo "- - - "
	@echo "- - - general - - -"
	@echo "BUILD_TOOL: $(BUILD_TOOL)"
	@echo "NAME: $(NAME)"
	@echo "- - - "
	@echo ""

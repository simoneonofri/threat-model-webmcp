.PHONY: render clean

BUILD_DIR ?= build

render:
	mkdir -p $(BUILD_DIR)
	bikeshed spec index.bs $(BUILD_DIR)/index.html
	mkdir -p $(BUILD_DIR)/images
	cp images/*.svg $(BUILD_DIR)/images/

clean:
	rm -rf $(BUILD_DIR)

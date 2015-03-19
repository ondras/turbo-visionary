all: css

watch: all
	while inotifywait -r . ; do make $^ ; done

css:
	$(MAKE) -C $@

.PHONY: all css

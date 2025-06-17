all: ci
ci: clean lint test

clean:
	cd examples && \
	  make -f ../src/Makefile-backpacker clean

lint:
	checkmake src/Makefile-backpacker

test:
	cd examples && \
	  make -f ../src/Makefile-backpacker deps-extra-apt ci update-to-latest update-to-main && \
	  make -f ../src/Makefile-backpacker update-to-version TARGET_backpacker_VERSION=0.10.0

release-major:
	rtk release --release-increment-type major

release-minor:
	rtk release --release-increment-type minor

release-patch:
	rtk release --release-increment-type patch

release: release-minor

.PHONY: all ci clean lint release release-major release-minor release-patch test
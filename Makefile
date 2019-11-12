.PHONY: all

all: dots rust-schnapps

rust-schnapps: src/**/*.*
		cd src/schnapps; cargo build

dots: dots/infrastructure.dot.m4
		./build.sh

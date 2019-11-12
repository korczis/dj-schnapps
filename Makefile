.PHONY: all

all: dots rust-schnapps

rust-schnapps: rust-schnapps-debug rust-schnapps-release

rust-schnapps-debug: src/**/*.*
		cd src/schnapps; cargo build

rust-schnapps-release: src/**/*.*
		cd src/schnapps; cargo build --release

dots: dots/infrastructure.dot.m4
		./build.sh

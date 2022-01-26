build:
	@hugo -D

dev:
	@hugo server

deploy: build
	@az login
	@az storage blob sync -c '$web' --account-name shulyakxyz -s ./public
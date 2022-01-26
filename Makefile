build:
	@hugo -D

dev:
	@hugo server

auth:
	@az login

deploy: build
	az storage blob sync -c '$web' --account-name shulyakxyz -s ./public
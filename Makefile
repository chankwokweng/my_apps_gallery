BASE_HREF = "/my_apps_gallery_web/"
GITHUB_REPO = "https://github.com/chankwokweng/my_apps_gallery_web.git"
BUILD_VERSION = "1.0.0"

deploy-web:
	@echo 'cleanup ...'
	flutter clean

	@echo 'pub get ...'
	flutter pub get

	@echo 'cleanup ...'
	flutter build web --base-href $(BASE_HREF) --release  

	@echo 'deploy ...'
	cd build\web && git init && git add . && git commit -m "Deploy $(BUILD_VERSION)" && git remote add origin $(GITHUB_REPO) &&	git branch -M main && git push -u --force origin main     

	cd ..\..
	@echo 'deploy finished!'

.PHONY: deploy-web
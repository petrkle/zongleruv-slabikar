help:
	@echo "help     - tato nápověda"
	@echo "web      - vygeneruje web"
	@echo "install  - nainstaluje závislosti"
	@echo "clean    - smaže generované ikonky"

webtest:
	NO_CONTRACTS=true bundle exec middleman build --clean --environment=development

web:
	NO_CONTRACTS=true bundle exec middleman build --clean --environment=production

install:
	bundle install

clean:
	rm -rf build

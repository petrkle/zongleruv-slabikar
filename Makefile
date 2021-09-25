help:
	@echo "help     - tato nápověda"
	@echo "web      - vygeneruje web"
	@echo "install  - nainstaluje závislosti"
	@echo "clean    - smaže generované ikonky"

web:
	NO_CONTRACTS=true bundle exec middleman build --clean

install:
	bundle install

clean:
	rm -rf source/img/z/zs-*.png build

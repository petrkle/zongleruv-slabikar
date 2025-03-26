help:
	@echo "help     - tato nápověda"
	@echo "web      - vygeneruje web"
	@echo "server   - spustí server pro vývoj"
	@echo "install  - nainstaluje závislosti"
	@echo "clean    - smaže generované ikonky"

webtest:
	NO_CONTRACTS=true bundle exec middleman build --clean --environment=development
	cp source/img/q/qr-platba-500kc.png build/img/q/

web:
	NO_CONTRACTS=true bundle exec middleman build --clean --environment=production
	cp source/img/q/qr-platba-500kc.png build/img/q/

server:
	NO_CONTRACTS=true bundle exec middleman server

install:
	bundle install

clean:
	rm -rf build

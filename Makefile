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
	NO_CONTRACTS=true bundle exec middleman build --verbose --environment=production | tee ./build.log
	cp source/img/q/qr-platba-500kc.png build/zongleruv-slabikar-500kc-png

server:
	NO_CONTRACTS=true bundle exec middleman server --bind-address=0.0.0.0

install:
	bundle install

clean:
	rm -rf build

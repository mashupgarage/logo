update: logo.zip

logo.zip: dist/logo.png dist/logo.svg
	rm -f "$@"
	rm -f dist/.DS_Store dist/*/.DS_Store
	cd dist && zip -9 -r "../logo.zip" .

dist/logo.png: dist/png/MG_1A\ -\ Horiz,\ color.png
	cp "$<" "$@"

dist/logo.svg: dist/svg/MG_1A\ -\ Horiz,\ color.svg
	cp "$<" "$@"

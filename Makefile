demo: jbang demo.sh
	awk '/^## run it/ {exit} {print}' jbang > demo
	echo 'rm -rf "$$TDIR/script.sh"' >> demo
	echo 'cat > "$$TDIR/script.sh" << EOF' >> demo
	cat demo.sh >> demo
	echo EOF >> demo
	echo 'chmod +x "$$TDIR/script.sh"' >> demo
	sed -n '/^## run it/,$$p' jbang >> demo
	sed -i 's/dev.jbang.Main "$$@"/dev.jbang.Main "$$TDIR\/script.sh" "$$@"/' demo
	chmod +x demo

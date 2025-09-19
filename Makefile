demo: jbang demo.sh
	awk '/^## run it/ {exit} {print}' jbang > demo
	echo 'SCRIPT=$$(mktemp $$TDIR/XXXXXX.sh)' >> demo
	echo 'rm -rf "$$SCRIPT"' >> demo
	echo 'cat > "$$SCRIPT" << EOF' >> demo
	cat demo.sh >> demo
	echo EOF >> demo
	echo 'chmod +x "$$SCRIPT"' >> demo
	sed -n '/^## run it/,$$p' jbang >> demo
	sed -i 's/dev.jbang.Main "$$@"/dev.jbang.Main "$$SCRIPT" "$$@"/' demo
	chmod +x demo

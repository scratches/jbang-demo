DEMO = demo

$(DEMO): jbang $(DEMO).sh
	awk '/^## run it/ {exit} {print}' jbang > $(DEMO)
	echo 'SCRIPT=$$TDIR/$(DEMO).sh' >> $(DEMO)
	echo 'rm -rf "$$SCRIPT"' >> $(DEMO)
	echo 'cat > "$$SCRIPT" << EOF' >> $(DEMO)
	cat $(DEMO).sh >> $(DEMO)
	echo EOF >> $(DEMO)
	echo 'chmod +x "$$SCRIPT"' >> $(DEMO)
	sed -n '/^## run it/,$$p' jbang >> $(DEMO)
	sed -i 's/dev.jbang.Main "$$@"/dev.jbang.Main "$$SCRIPT" "$$@"/' $(DEMO)
	chmod +x $(DEMO)

clean:
	rm -f $(DEMO)
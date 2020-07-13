define data
#!/biin/bash
set -e
if [[ `which hugo` == *"hugo"* ]]; then 
	cd ps && hugo
else
	echo Hugo not installed. Run "brew install hugo"
fi
endef
export data

pre-deployment-mac:
	@echo "$$data" | bash

local-test:
	cd public && python3 -m http.server
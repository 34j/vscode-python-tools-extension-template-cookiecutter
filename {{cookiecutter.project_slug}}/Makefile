init:
	py -3.7 -m venv .venv
	& ".venv/scripts/activate"
	echo -e "\u001b[93mPlease activate venv if not activated.\u001b[0m"

setup:
	pip install -U nox
	nox --session setup
	npm install

setup-test:
	pip install -r src/test/python_tests/requirements.txt

update:
	nox --session setup
	npm update

publish:
	nox --session build_package
	vsce publish

lint:
	nox --session lint

test:
	nox --session tests
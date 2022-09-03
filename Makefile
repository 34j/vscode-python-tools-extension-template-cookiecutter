init:
	py -3.7 -m venv .venv
	".venv/scripts/activate"
	pip install -U nox

setup:
	nox -session setup
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
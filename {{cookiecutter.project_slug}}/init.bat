py -3.7 -m venv .venv
".venv/scripts/activate" && which python && pip install -U nox && nox --session setup && npm install
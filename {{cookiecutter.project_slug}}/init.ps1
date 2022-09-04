py -3.7 -m venv .venv
& ".venv/scripts/activate"
(which python) -and (pip install -U nox) -and (nox --session setup) -and (npm install)
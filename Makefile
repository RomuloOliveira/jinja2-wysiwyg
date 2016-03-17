MANAGE_PY := ./live_editor/manage.py

clean:
	@find . -name '*.pyc' -delete
	@find . -name '*.pyo' -delete

test: clean
	@echo 'Running tests'

runserver: clean
	@$(MANAGE_PY) runserver

migrate:
	@$(MANAGE_PY) migrate

flake8:
	@flake8 .

requirements:
	@pip install --upgrade -r requirements.txt

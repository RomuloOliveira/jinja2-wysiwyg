clean:
	@find -name '*.pyc' -delete
	@find -name '*.pyo' -delete

test: clean
	@echo 'Running tests'

runserver: clean
	@echo 'Running server'

flake8:
	@flake8 .

requirements:
	@pip install --upgrade -r requirements.txt

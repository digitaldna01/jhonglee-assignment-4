# Define your virtual environment and flask app
VENV = venv
FLASK_APP = app.py

install:
	python3 -m venv venv
	./$(VENV)/bin/pip install -r requirements.txt

run:
	python -c 'import nltk; nltk.download("punkt"); nltk.download("stopwords"); nltk.download("wordnet")'
	FLASK_APP=$(FLASK_APP) FLASK_ENV=development ./$(VENV)/bin/flask run --port 3000

# Clean up virtual environment
clean:
	rm -rf $(VENV)

# Reinstall all dependencies
reinstall: clean install

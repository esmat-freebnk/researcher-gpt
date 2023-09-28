# This Makefile sets up a virtual environment and runs a FastAPI application.

# Declare phony targets
.PHONY: setup run

setup:
	@echo "Setting up virtual environment..."
	python3 -m venv env
	source env/bin/activate && pip3 install -r requirements.txt

run:
	@echo "Running the FastAPI application..."
	source env/bin/activate && uvicorn app:app --reload

	

SHELL := /bin/bash

.PHONY: run setup docker venv clean

run:
	# python ./src/main.py

setup:
	# pip install --upgrade pandas fastapi uvicorn xgboost lightgbm scikit-learn
	# python setup.py install
	export PYENV_VIRTUALENV_DISABLE_PROMPT=1
	source /home/shyeon/.pyenv/versions/3.8.3/envs/hands-on/bin/activate && jupyter lab

venv:
	source /home/shyeon/.pyenv/versions/3.8.3/envs/hands-on/bin/activate

docker:
	# docker build -t predictor:v1.1 . 
	# docker run --name predictor --rm -p 9010:9010 predictor:v1.1

clean:
	find . -type f -name "*.pyc" -delete
	find . -type d -name __pycache__ | xargs rm -fr {}
	find . -type d -name .ipynb_checkpoints | xargs rm -fr {}
	find . -type d -name .mypy_cache | xargs rm -fr {}
	find . -type d -name .pytest_cache | xargs rm -fr {}		

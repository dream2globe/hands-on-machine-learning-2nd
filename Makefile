SHELL := /bin/bash
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

.PHONY: run setup docker clean update notebook

run:
	# python ./src/main.py

setup:
	pyenv virtualenv 3.8.5 hands-on &&\
		source /home/shyeon/.pyenv/versions/3.8.5/envs/hands-on/bin/activate &&\
		pip install --upgrade pip &&\
		pip install --upgrade jupyterlab pandas seaborn xgboost lightgbm scikit-learn
	# python setup.py install

update:
	

notebook:
	export PYENV_VIRTUALENV_DISABLE_PROMPT=1
	source /home/shyeon/.pyenv/versions/3.8.5/envs/hands-on/bin/activate && jupyter lab

docker:
	# docker build -t predictor:v1.1 . 
	# docker run --name predictor --rm -p 9010:9010 predictor:v1.1

clean:
	find . -type f -name "*.pyc" -delete
	find . -type d -name __pycache__ | xargs rm -fr {}
	find . -type d -name .ipynb_checkpoints | xargs rm -fr {}
	find . -type d -name .mypy_cache | xargs rm -fr {}
	find . -type d -name .pytest_cache | xargs rm -fr {}		

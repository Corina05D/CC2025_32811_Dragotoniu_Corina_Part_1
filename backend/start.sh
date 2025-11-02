#!/bin/bash

VENV_PATH="/home/site/venv"

if [ ! -d "$VENV_PATH" ]; then
  echo "Creating virtual environment..."
  python3 -m venv $VENV_PATH
  source $VENV_PATH/bin/activate
  pip install --upgrade pip
  pip install -r requirements.txt
else
  echo "Using existing virtual environment..."
  source $VENV_PATH/bin/activate
fi

# start application FastAPI with gunicorn + uvicorn
gunicorn -w 4 -k uvicorn.workers.UvicornWorker main:app --bind 0.0.0.0:$PORT
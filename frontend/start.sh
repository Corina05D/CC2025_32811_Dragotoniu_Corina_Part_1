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

# start Streamlit
streamlit run app.py --server.port $PORT --server.address 0.0.0.0
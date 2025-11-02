#!/bin/bash

if [ ! -d ".venv" ]; then
  echo "Creating virtual environment..."
  python3 -m venv .venv
  source .venv/bin/activate
  pip install --upgrade pip
  pip install -r requirements.txt
else
  echo "Using existing virtual environment..."
  source .venv/bin/activate
fi

# start Streamlit
streamlit run app.py --server.port $PORT --server.address 0.0.0.0
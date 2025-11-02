#!/bin/bash

# --- Setare port pentru backend (Azure App Service setează PORT) ---
PORT=${PORT:-8000}

echo "Starting FastAPI backend on port $PORT..."
gunicorn -w 4 -k uvicorn.workers.UvicornWorker backend.main:app --bind 0.0.0.0:$PORT &

# --- Așteaptă câteva secunde ca backend-ul să pornească ---
sleep 5

echo "Starting Streamlit frontend on port 8501..."
streamlit run frontend/app.py --server.port 8501 --server.address 0.0.0.0

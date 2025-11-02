#!/bin/bash
#cd backend

# activează virtual environment-ul existent
source .venv/bin/activate

# start application FastAPI with gunicorn + uvicorn
gunicorn -w 4 -k uvicorn.workers.UvicornWorker main:app --bind 0.0.0.0:$PORT
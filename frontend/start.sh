#!/bin/bash
#cd frontend

# activează virtual environment-ul existent
source .venv/bin/activate

# start Streamlit
streamlit run app.py --server.port $PORT --server.address 0.0.0.0
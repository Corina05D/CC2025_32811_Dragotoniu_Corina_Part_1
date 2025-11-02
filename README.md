# Cloud_Computing

This is a minimal fullstack project with:

- **Backend:** FastAPI  
- **Frontend:** Streamlit  

Each part has its own separate environment.

---
## 1. Clone the repository

```bash
git clone https://github.com/Corina05D/Cloud_Computing.git
cd Cloud_Computing
```

## 2. Setup Backend (FastAPI)
```bash
cd backend
python -m venv .venv          # create virtual environment
# activate the environment
.venv\Scripts\activate         # Windows
# or
source .venv/bin/activate      # Linux/Mac

pip install -r requirements.txt
uvicorn main:app --reload
```

The backend will be available at:
http://127.0.0.1:8000

Main endpoint returning the message:
http://127.0.0.1:8000/api/data

## 3. Setup Frontend (Streamlit)
In a separate terminal:
```bash
cd frontend
python -m venv .venv
.venv\Scripts\activate         # Windows
# or
source .venv/bin/activate      # Linux/Mac

pip install -r requirements.txt
streamlit run app.py
```
The frontend will be available at:
http://localhost:8501

It fetches the message from the backend endpoint and displays it on the page

import streamlit as st
import requests

st.title("Frontend Streamlit")

backend_url = "cc2025-backend-feh4axf9hkcybcbs.northeurope-01.azurewebsites.net/api/data"

try:
    response = requests.get(backend_url)
    response.raise_for_status()
    data = response.json()
    st.success(f"Mesaj de la backend: {data['message']}")
except requests.exceptions.RequestException as e:
    st.error(f"Nu s-a putut conecta la backend: {e}")

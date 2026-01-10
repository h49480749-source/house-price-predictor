from python:3.9-slim

workdir /app

copy app.py requirements.txt .

run pip install -r requirements.txt

expose 8501

cmd ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
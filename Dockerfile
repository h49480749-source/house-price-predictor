from python:3.11-slim

workdir /app

copy src/api .

run pip install -r requirements.txt

copy models/trained/*.pkl models/trained/

expose 8000

cmd ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
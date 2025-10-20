from fastapi import FastAPI
from prometheus_fastapi_instrumentator import Instrumentator

app = FastAPI()

@app.get("/health")
def health_check():
    return {"message": "Hello, World!"}

Instrumentator().instrument(app).expose(app)
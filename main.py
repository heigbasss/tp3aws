from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Hello from TP3 FastAPI"}

@app.get("/health")
def health():
    return {"status": "healthy"}

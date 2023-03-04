from fastapi import FastAPI
from server.api import v1

app = FastAPI()

app.include_router(v1.router, prefix="/v1")
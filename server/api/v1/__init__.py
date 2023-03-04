from fastapi import APIRouter

from server.api.v1 import health_check

router = APIRouter()

router.include_router(health_check.router, tags=["Health Check"])
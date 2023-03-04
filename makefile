include ../build_tools/poetry.mk

PORT ?= 8989

start:
# env/bin/uvicorn main:app --app-dir server --reload --host 0.0.0.0 --port ${PORT}
	env/bin/hypercorn server.main:app --worker-class trio --reload --bind 0.0.0.0:${PORT}
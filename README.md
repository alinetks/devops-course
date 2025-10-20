# devops-course — Quick Start & Usage

## Overview
This project contains an API and observability tooling (Prometheus). The API exposes a health endpoint and is packaged to run with Docker Compose. Development and tests are intended to run on Python 3.12.

## Requirements
- Docker & Docker Compose
- Python 3.12 (for local virtualenv/test runs)

## Build & Run (Docker Compose)
From the project root, build and start all services with:
From the project root, build and start all services:

```bash
docker compose up --build
```

After startup:
- API: http://localhost:8000
    - Health endpoint: GET http://localhost:8000/health
- Prometheus metrics: http://localhost:9090/metrics

Testing (requires Python 3.12):
1. Create and activate a virtual environment at project root:
```bash
python3.12 -m venv .venv
source .venv/bin/activate    # on Windows: .venv\Scripts\activate
```
2. Install test dependencies:
```bash
pip install pytest httpx
```
3. Run tests from the api folder:
```bash
cd api
pytest
```

Note: This project targets Python 3.12 for local development and test runs.
# FastAPI Book Management API

## Overview

This project is a RESTful API built with FastAPI for managing a book collection. It provides comprehensive CRUD (Create, Read, Update, Delete) operations for books with proper error handling, input validation, and documentation. It is deployed using Docker, Nginx, and Render for seamless access and scalability.

## Features

- 📚 Book management (CRUD operations)
- ✅ Input validation using Pydantic models
- 🔍 Enum-based genre classification
- 🧪 Complete test coverage
- 📝 API documentation (auto-generated by FastAPI)
- 🔒 CORS middleware enabled
- 📝 Documentation: Interactive API documentation available via `/docs`.
- 🚀 Deployment: Hosted on **Render** with **Nginx as a reverse proxy**.
- 🐳 Docker Support: Runs as a multi-container application with `docker-compose`.
- 🔄 CI/CD Pipeline: Automatic deployment when changes are pushed to `main`.

## Project Structure

```
fastapi-book-project/
├── api/
│   ├── db/
│   │   ├── __init__.py
│   │   └── schemas.py      # Data models and in-memory database
│   ├── routes/
│   │   ├── __init__.py
│   │   └── books.py        # Book route handlers
│   └── router.py           # API router configuration
├── core/
│   ├── __init__.py
│   └── config.py           # Application settings
├── tests/
│   ├── __init__.py
│   └── test_books.py       # API endpoint tests
├── main.py                 # Application entry point
├── Dockerfile        # Docker setup for FastAPI
├── docker-compose.yml # Multi-container setup
├── nginx.conf        # Nginx reverse proxy 
├── requirements.txt  # Python dependencies
├── README.md         # Project documentation
├── .github/workflows # CI/CD pipeline

```

## Technologies Used

- Python 3.12
- FastAPI
- Pydantic
- pytest
- uvicorn
- Nginx (Reverse Proxy)
- Docker & Docker Compose (Containerization)
- GitHub Actions (CI/CD automation)
- Render (Deployment platform)

## Installation

1. Clone the repository:

```bash
git clone https://github.com/Toluskydc/fastapi-book-project.git
cd fastapi-book-project
```

2. Create a virtual environment:

```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. Install dependencies:

```bash
pip install -r requirements.txt
```

## Running the Application

3. Run with Docker Compose
```sh
docker-compose up --build
```
Your API will be accessible at: **http://localhost/api/v1/books/**

2. Access the API documentation:

- Swagger UI: http://localhost:8000/docs
- ReDoc: http://localhost:8000/redoc

## API Endpoints

### Books

- `GET /api/v1/books/` - Get all books
- `GET /api/v1/books/{book_id}` - Get a specific book
- `POST /api/v1/books/` - Create a new book
- `PUT /api/v1/books/{book_id}` - Update a book
- `DELETE /api/v1/books/{book_id}` - Delete a book

### Health Check

- `GET /healthcheck` - Check API status

## Book Schema

```json
{
  "id": 1,
  "title": "Book Title",
  "author": "Author Name",
  "publication_year": 2024,
  "genre": "Fantasy"
}
```

Available genres:

- Science Fiction
- Fantasy
- Horror
- Mystery
- Romance
- Thriller

## Running Tests

```bash
pytest
```

## Error Handling

The API includes proper error handling for:

- Non-existent books
- Invalid book IDs
- Invalid genre types
- Malformed requests

---

## 🌍 Deployment on Render
This project uses **GitHub Actions** for CI/CD and **Render** for deployment.

### **Deployment Workflow:**
1. Push changes to the `main` branch.
2. GitHub Actions automatically builds and pushes the Docker image.
3. Render deploys the latest version of the app.

---

## 🛠️ Contributors
- **Toluwani Omosuyi** ([@ToluskyDC](https://github.com/ToluskyDC))


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.



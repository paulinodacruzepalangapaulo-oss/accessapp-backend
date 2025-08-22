# AccessApp - Backend MVP (Go)

## Requisitos
- Docker & Docker Compose
- git

## Passos para correr localmente
1. Clonar:
   git clone <repo-url>
   cd accessapp-backend

2. Construir e subir serviços:
   docker-compose up --build

3. Aplicar migrations:
   docker exec -it <container_db> psql -U postgres -d accessapp -f /app/internal/db/migrations.sql

4. A API estará disponível em:
   http://localhost:8080/api/v1

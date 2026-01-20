@echo off
cd /d "%~dp0"
echo Inicializando ambiente Docker...

docker compose -f docker-compose.yml down -v --rmi local
docker compose -f docker-compose.yml up --build -d

echo Ambiente iniciado com sucesso!
pause

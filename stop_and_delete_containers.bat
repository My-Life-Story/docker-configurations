@echo off

echo "Stopping all containers"
FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker stop %%i

echo "Deleting all containers"
FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker rm %%i
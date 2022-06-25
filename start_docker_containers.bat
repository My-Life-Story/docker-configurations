@echo off

set /p start_postgres="Do you want to start Postgres? (y/n)?: "
set /p start_localstack="Do you want to start Localstack? (y/n)?:"
set /p start_redis="Do you want to start Redis? (y/n)?:"
set /p start_rabbit_mq="Do you want to start Rabbit MQ? (y/n)?:"
set /p start_uber_cadence="Do you want to start Uber Cadence? (y/n)?:"

if "%start_postgres%"=="y" (echo "Starting Postgres" & cd postgres & docker-compose up -d & cd ..)
if "%start_localstack%"=="y" (echo "Starting Localstack" & cd localstack & docker-compose up -d & cd ..)
if "%start_redis%"=="y" (echo "Starting Redis" & docker run -p 6379:6379 --name local-redis -d redis:6.0.10)
if "%start_rabbit_mq%"=="y" (echo "Starting Rabbit MQ" & cd rabbitmq & docker-compose up -d & cd ..)
if "%start_uber_cadence%"=="y" (echo "Starting Uber Cadence" & cd cadence & docker-compose up -d & cd ..)
#!/bin/bash

echo "Do you want to start Postgres? (y/n) : "
read start_postgres

echo "Do you want to start Localstack? (y/n) : "
read start_localstack

echo "Do you want to start Redis? (y/n) : "
read start_redis

echo "Do you want to start Rabbit MQ? (y/n) : "
read start_rabbit_mq

echo "Do you want to start Uber Cadence? (y/n) : "
read start_uber_cadence

if [ $start_postgres == "y" ]; 
then
    echo "Starting Postgres"
    cd postgres
    docker-compose up -d
    cd ..
fi

if [ $start_localstack == "y" ]; 
then
    echo "Starting Localstack"
    cd localstack
    docker-compose up -d
    cd ..
fi

if [ $start_redis == "y" ]; 
then
    echo "Starting Redis"
    docker run -p 6379:6379 --name local-redis -d redis:6.0.10
fi

if [ $start_rabbit_mq == "y" ]; 
then
    echo "Starting Rabbit MQ"
    cd rabbitmq
    docker-compose up -d
    cd ..
fi

if [ $start_uber_cadence == "y" ]; 
then
    echo "Starting Uber Cadence"
    cd cadence
    docker-compose up -d 
    cd ..
fi
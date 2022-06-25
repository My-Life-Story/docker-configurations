Source: https://stackoverflow.com/questions/52819237/how-to-add-plugin-to-rabbitmq-docker-image

Steps:
1) Build the Dockerfile with this command: docker build -t rabbitmq-with-delayed-message-exchange .
2) Docker Compose up: docker-compose up -d
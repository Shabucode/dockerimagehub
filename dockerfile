#use the official python image from the docker hub
FROM python:3.9-slim

#set teh working directory
WORKDIR /app

#copy yte current directory contents into the container at /app
COPY ./app

#Install any needed packages specified in requirements.txt
RUN pip install flask

#Make sure 5000 available to teh world outside this container
EXPOSE 5000
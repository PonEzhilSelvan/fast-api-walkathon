#Start with an Python Image
FROM  python:3.9-slim


# Set working dirctory  in the container

WORKDIR /app

#Copy all files from current directory to /app in the container

COPY . /app

#Install dependencies

RUN pip install -r requirements.txt


#Expose port 80 of the applications
EXPOSE 80


#Define the command to run tyhe Fast API app using uvicorn
CMD ["uvicorn","model-app:app","--host","0.0.0.0","--port","80"]
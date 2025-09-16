# Flask Dockerized App

This is a simple Python Flask application that has been Dockerized.  
You can run it locally using Docker and access it in your browser.

---

## **Tech Stack**

- Python 3.11
- Flask 2.3.2
- Docker

---

## **Project Structure**

flask-app/
├─ app.py # Flask application
├─ requirements.txt # Python dependencies
├─ Dockerfile # Docker build instructions
└─ .gitignore # Ignored files

yaml
Copy code

---

## **Prerequisites**

- Docker installed on your machine  
  [Install Docker](https://docs.docker.com/get-docker/)

- Basic knowledge of Docker

---

## **How to Run**

### 1️⃣ Build Docker Image

```bash
docker build --no-cache -t my-flask-app .
2️⃣ Run Docker Container
Map host port 5002 to container port 5000:

bash
Copy code
docker run -it -p 5002:5000 my-flask-app
Flask will now be running inside Docker.

3️⃣ Verify
Open your browser and go to:

arduino
Copy code
http://localhost:5002/
Or use curl:

bash
Copy code
curl localhost:5002
# Output: Hello, Dockerized Flask!
Notes
app.py is configured to run on host="0.0.0.0" so Docker can forward requests from your machine.

requirements.txt contains Flask dependency.

Use --no-cache when building Docker image to ensure dependencies are installed fresh.

Optional: Run container in detached mode with:

bash
Copy code
docker run -d -p 5002:5000 my-flask-app
To stop all containers:

bash
Copy code
docker ps        # list running containers
docker stop <container_id>
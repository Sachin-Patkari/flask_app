🚀 Project: Dockerize Python Flask Application
This project demonstrates how to containerize a Python Flask application using Docker.
Perfect for beginners learning Docker or building lightweight APIs.

🧠 Overview
🔍 Introduction
Tech Stack: Python, Flask, Docker
⚙️ Prerequisites
Docker installed on your machine (Install Docker Guide)
Basic knowledge of Docker CLI
🚧 Steps to Run
🛠 1. Build the Docker Image
docker build -t my-flask-app .
▶️ 2. Run the Docker Container on Port 5001
docker run -p 5001:5000 my-flask-app
You can change the host port (5002) as needed. The internal port (5000) is fixed by Flask.

✅ 3. Verify the Result
Open in browser: http://localhost:5002
Or run:
curl localhost:5002
You should see:

Hello from Flask inside Docker!


📦 Project Files
.
├── app.py              # Flask app code
├── requirements.txt    # Flask dependency
├── Dockerfile          # Docker config
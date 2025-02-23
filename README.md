# Dockerized FastAPI Application with GitHub Actions

## 🚀 How to Install and Run Locally
```sh
# Clone the repository
git clone https://github.com/007Aaradhya/DevOps_Dockerized_FastAPI-GitHub_Actions.git
cd DevOps_Dockerized_FastAPI-GitHub_Actions

# Install dependencies
pip install -r requirements.txt

# Run FastAPI server
uvicorn main:app --host 0.0.0.0 --port 8000
```
Then visit **http://localhost:8000/docs** to see the Swagger UI.

## 🐳 How to Build and Run Docker Image
```sh
# Build the Docker image
docker build -t fastapi-app .

# Run the container
docker run -p 8000:80 fastapi-app
```
Visit **http://localhost:8000/docs** to test the API.

## 🔄 GitHub Actions Workflow Explanation
- **Triggers on every push to the repository.**
- **Logs into Docker Hub using GitHub Secrets.**
- **Builds and pushes the Docker image to Docker Hub.**
- **Ensures automated deployment with CI/CD.**

## 🔑 Steps to Set Up Docker Token & Secrets
### 1️⃣ Generate a Docker Token
1. Go to [Docker Hub](https://hub.docker.com/)
2. Navigate to **Account Settings → Security → Access Tokens**
3. Click **Generate Token** and copy the value

### 2️⃣ Set GitHub Actions Secrets
1. **Go to GitHub Repository → Settings → Secrets and Variables → Actions**
2. Click **New repository secret** and add:
   - **DOCKER_USERNAME** → Your Docker Hub username
   - **DOCKERTOKEN** → Your Docker Hub Access Token

## 🔄 Deployment Details
- **GitHub Repository:** https://github.com/007Aaradhya/DevOps_Dockerized_FastAPI-GitHub_Actions
- **Docker Hub Image:** https://hub.docker.com/r/aaradhyaag/fastapi-app


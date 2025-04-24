# Scalable Web Application - CI/CD Pipleine
**Containerization, Kubernetes Deployment, and CI/CD Pipeline for a Web Application**  

## Team Members  
- **Dev Divyendh Dhinakaran (G01450299)**  
  - Configured Jenkins CI/CD pipeline  
  - Deployed the application on Kubernetes  
  - Managed GitHub integration  
  - Tested application scalability  
- **Tejaswi Samineni (G01460925)**  
  - Containerized the web application using Docker  
  - Created and configured EC2 instances  
  - Set up security groups and networking  
  - Deployed Rancher for Kubernetes management  

---

## Project Overview  
This project focuses on:  
1. **Containerizing a web application** using Docker.  
2. **Deploying the containerized application** on Kubernetes using Rancher.  
3. **Setting up a CI/CD pipeline** with Jenkins to automate deployment.  

---

## 🔗 **Project Links**  
- **Deployed Application:** [http://3.134.146.253:32702](http://3.134.146.253:32702)  
- **GitHub Repository:** [https://github.com/Dev-Divyendh/SWE645_Assignment2_DT](https://github.com/Dev-Divyendh/SWE645_Assignment2_DT)  
- **Docker Hub Image:** [https://hub.docker.com/r/tejaswi0502/ass2-dockerimage-dt](https://hub.docker.com/r/tejaswi0502/ass2-dockerimage-dt)  

---

## 🚀 **Project Setup and Execution**  

### 1️⃣ **Docker Containerization**  
- Build and push the Docker image to Docker Hub:  
  ```sh
  docker build -t tejaswi0502/ass2-dockerimage-dt:latest .
  docker push tejaswi0502/ass2-dockerimage-dt:latest
  ```

## 🚀 Setting Up Kubernetes  
Deploy the application on Kubernetes:  
```sh
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

## 🔧 Jenkins CI/CD Pipeline  

Jenkins is used to automate the deployment process. The pipeline is configured to:  

- 📥 **Fetch code from GitHub**  
- 🛠 **Build a Docker image and push it to Docker Hub**  
- 🚀 **Deploy the latest image to the Kubernetes cluster**  

### 📌 Steps to Set Up Jenkins Pipeline  

1. **Create a new Jenkins Pipeline Job**  
   - Navigate to the Jenkins dashboard and click **New Item**  
   - Select **Pipeline**, provide a name, and click **OK**  

2. **Configure Source Code Management (SCM)**  
   - Under **Pipeline**, choose **Pipeline script from SCM**  
   - Select **Git** and enter the GitHub repository URL  
   - Add **GitHub credentials** if required  

3. **Define Build Triggers**  
   - Enable **Poll SCM**  
   - Set the schedule to:  
     ```sh
     * * * * *  # Runs the job every minute
     ```

4. **Use the `Jenkinsfile`** for pipeline automation  
   - The pipeline stages include:  
     - Cloning the GitHub repository  
     - Building the Docker image  
     - Pushing the image to Docker Hub  
     - Deploying the application to Kubernetes  

5. **Save and Run the Pipeline**  
   - Click **Save** and **Build Now** to test the setup  
   - Verify the deployment on Kubernetes  



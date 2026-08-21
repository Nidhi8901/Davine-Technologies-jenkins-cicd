# Jenkins CI/CD Pipeline with GitHub Integration

## Davine Technologies – Week 5 DevOps Internship

This project demonstrates the implementation of a basic CI/CD pipeline using Jenkins and GitHub.

The pipeline automatically retrieves source code from the GitHub repository, performs a build step, executes automated tests, and validates the application using a Jenkins Declarative Pipeline.

---

## 📌 Project Overview

The objective of this project is to understand and implement the fundamentals of Jenkins, CI/CD, GitHub integration, Jenkins credentials, pipeline stages, automated builds, GitHub Webhooks, and pipeline troubleshooting.

The project demonstrates how source code moves from a GitHub repository through Jenkins and is automatically validated through a CI/CD pipeline.

### CI/CD Flow

```text
Developer
    ↓
GitHub Repository
    ↓
Jenkins
    ↓
Checkout
    ↓
Build
    ↓
Test
    ↓
Validation
    ↓
Successful Pipeline
```

---

## 🎯 Objectives

The following objectives were completed as part of the Week 5 DevOps Internship task:

* Install and configure Jenkins
* Explore the Jenkins Dashboard
* Integrate Jenkins with GitHub
* Configure Jenkins Credentials securely
* Create a Jenkins project
* Connect Jenkins with a GitHub repository
* Configure automated build triggers
* Create a Declarative Pipeline
* Write and use a Jenkinsfile
* Implement Checkout, Build, and Test stages
* Add an additional Validation stage
* Execute the pipeline
* Analyze Jenkins Console Output
* Configure GitHub Webhook integration
* Troubleshoot pipeline failures
* Verify successful automated execution

---

## 🛠️ Technologies Used

| Technology     | Purpose                 |
| -------------- | ----------------------- |
| Jenkins        | CI/CD automation        |
| Git            | Version control         |
| GitHub         | Source code management  |
| Jenkinsfile    | Pipeline as Code        |
| Shell Script   | Automated testing       |
| HTML           | Sample application      |
| GitHub Webhook | Automated build trigger |

---

## 📁 Repository Structure

```text
.
├── app/
│   └── index.html
│
├── screenshots/
│   ├── 01-jenkins-dashboard.png
│   ├── 02-github-integration.png
│   ├── 03-pipeline-execution.png
│   ├── 04-build-logs.png
│   ├── 05-github-webhook.png
│   ├── 06-jenkins-credentials.png
│   └── 07-troubleshooting.png
│
├── docs/
│   └── Week-5-Jenkins-CICD-Report.pdf
│
├── Jenkinsfile
├── test.sh
├── README.md
└── .gitignore
```

---

## ⚙️ Jenkins Pipeline

The project uses a Declarative Jenkins Pipeline defined in the `Jenkinsfile`.

### Pipeline Stages

```text
Checkout
   ↓
Build
   ↓
Test
   ↓
Validation
```

### 1. Checkout

The Checkout stage retrieves the source code from the configured GitHub repository.

```groovy
checkout scm
```

This allows Jenkins to work with the latest source code available in the configured branch.

---

### 2. Build

The Build stage performs the basic application build/verification operations.

The pipeline lists the workspace files and confirms that the build step has completed successfully.

---

### 3. Test

The Test stage executes the automated shell script:

```bash
./test.sh
```

The test script verifies whether the application file exists.

A successful test returns exit code `0`.

---

### 4. Validation

The Validation stage performs an additional check to verify that:

```text
app/index.html
```

exists in the workspace.

This provides an additional quality check before the pipeline is marked successful.

---

## 🧪 Automated Testing

The project contains a shell script named `test.sh`.

The script checks whether the application file exists:

```bash
if [ -f app/index.html ]; then
    echo "Test PASSED: index.html exists"
    exit 0
else
    echo "Test FAILED: index.html not found"
    exit 1
fi
```

If the file exists, the test passes.

If the file is missing, the test fails and Jenkins marks the pipeline accordingly.

---

## 🔐 Jenkins Credentials

Jenkins Credentials were configured to securely manage authentication information required for GitHub integration.

Sensitive information such as passwords, access tokens, and secret values should never be hard-coded inside the Jenkinsfile or committed to GitHub.

Only the credential ID/reference should be used in Jenkins pipeline configuration where required.

> **Security Note:** No passwords, personal access tokens, webhook secrets, or private keys are stored in this repository.

---

## 🔗 GitHub Integration

Jenkins was connected to the GitHub repository:

```text
Nidhi8901/Davine-Technologies-jenkins-cicd
```

The Jenkins pipeline uses the GitHub repository as its source code repository.

The Jenkinsfile is stored directly in the repository, following the Pipeline as Code approach.

---

## 🔔 GitHub Webhook

A GitHub Webhook was configured to allow GitHub to notify Jenkins when repository activity occurs.

### Webhook Flow

```text
GitHub Push
    ↓
GitHub Webhook
    ↓
Jenkins
    ↓
Pipeline Trigger
    ↓
Checkout
    ↓
Build
    ↓
Test
    ↓
Validation
```

This reduces the need for manually starting Jenkins builds and demonstrates event-driven CI/CD automation.

---

## 📋 Build Triggers

The Jenkins project was configured for automated triggering through GitHub integration.

When a relevant repository event occurs, GitHub can send a webhook request to Jenkins, allowing Jenkins to start the configured pipeline automatically.

---

## 🔍 Pipeline Troubleshooting

During the implementation, pipeline execution was tested and troubleshooting was performed using Jenkins Console Output.

The troubleshooting process followed these steps:

1. Triggered the Jenkins pipeline.
2. Observed the build result.
3. Opened Jenkins Console Output when a failure occurred.
4. Identified the stage where the pipeline failed.
5. Checked the relevant command and error message.
6. Corrected the configuration or application test issue.
7. Committed the correction to GitHub.
8. Triggered the pipeline again.
9. Verified that the pipeline completed successfully.

This demonstrated the importance of reading Jenkins Console Output instead of simply rerunning failed builds.

---

## 📊 Final Pipeline Result

The final pipeline successfully executes the following stages:

```text
Checkout       ✓
Build          ✓
Test           ✓
Validation     ✓
```

The successful execution confirms that Jenkins can retrieve the project from GitHub, perform the configured build operations, execute automated tests, and validate the application.

---


## ✅ Learning Outcomes

After completing this practical exercise, I gained hands-on experience with:

* Jenkins installation and configuration
* Jenkins Dashboard
* Jenkins jobs and builds
* GitHub integration
* Jenkins credentials
* Declarative Pipelines
* Jenkinsfile
* Pipeline stages
* Automated testing
* GitHub Webhooks
* Build triggers
* Console Output analysis
* CI/CD troubleshooting
* Pipeline as Code

---

## 👩‍💻 Author

**Nidhi Kumari**

DevOps Intern
Davine Technologies

### Repository

**Davine-Technologies-jenkins-cicd**

---


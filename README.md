# gokul-devsecops-lab

Intentionally vulnerable Node.js application for DevSecOps security pipeline testing.

This project contains known vulnerabilities in its dependencies so that security tools like npm audit, CodeQL, Trivy, and Checkov can detect them during pipeline stages.

## Running the app

```bash
npm install
npm start
```

The server runs on port 3000.

# DevOps Academy 🚀

A hands-on DevOps learning journey built around practical exercises and projects in my Ubuntu homelab.

The goal of this repository is to document my progress as I work through core DevOps technologies, understand how they work, and apply what I learn through practical labs rather than just theory.

## 📚 Learning Progress

- [x] Linux Fundamentals
- [x] Git & GitHub
- [x] Bash Scripting
- [ ] Docker & Containerisation
- [ ] Monitoring
- [ ] CI/CD
- [ ] Terraform
- [ ] Ansible
- [ ] Kubernetes

## 🐧 Bash Scripting

Completed a series of practical Bash exercises covering:

- Variables and command substitution
- User input and script arguments
- Conditional logic and exit codes
- `for` and `while` loops
- Functions
- File and directory checks
- Logging and error handling
- Cron scheduling

### Final Project: DevOps Lab Health Monitor

Built a Bash health-monitoring script for my Ubuntu DevOps server.

The script:

- Checks disk usage
- Checks available memory
- Monitors key Linux services
- Logs health-check results
- Detects unhealthy services
- Returns exit code `0` when healthy
- Returns exit code `1` when a warning or failure is detected

Failure handling was tested by introducing a fake service and confirming that the script detected the failure and returned the correct exit code.

Scripts can be found in:

`bash/`

## 🛠️ Lab Environment

My DevOps learning environment currently consists of:

- Ubuntu Server
- Git & GitHub
- Bash
- SSH
- Cron
- Dedicated homelab hardware

More tools will be added as I progress through the roadmap.

## 🎯 Learning Approach

For each topic I aim to:

1. Understand the core concepts
2. Complete hands-on exercises
3. Build something practical
4. Test successful and failed scenarios
5. Document what I learned
6. Version control the work with Git

## 🗺️ Roadmap

### Completed

✅ Linux Fundamentals  
✅ Git & GitHub  
✅ Bash Scripting

### Up Next

🐳 Docker & Containerisation

### Future Modules

- Monitoring
- CI/CD
- Terraform
- Ansible
- Kubernetes

## 📈 Progress

This repository will continue to grow as I work through each module and build increasingly practical DevOps projects.

The next stage is Docker, where I'll begin learning containerisation and how applications can be packaged and run consistently across different environments.

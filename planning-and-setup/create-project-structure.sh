#!/bin/bash

# Define project root
PROJECT_DIR="$HOME/projects/AI_Robotics_Transition_Project"

# Create main project directories
mkdir -p "$PROJECT_DIR"/{.github/workflows,src/mbse_llm_translator/{docker,scripts,models,api,tests},src/swarm_simulation/{ros2,isaac_sim,sysml,tests},src/common,docs/mbse_llm_translator,docs/swarm_simulation,notebooks/{llm_experiments,swarm_experiments},sandbox/experiments/{python,ros2,llm,sysml,isaac_sim,notebooks},sandbox/progress_logs,sandbox/backups,sandbox/sandbox_env/{python_venv,docker_sandbox}}

# Create initial files
touch "$PROJECT_DIR"/{.gitignore,LICENSE,README.md,requirements.txt}
touch "$PROJECT_DIR"/.github/workflows/ci.yml
touch "$PROJECT_DIR"/.github/ISSUE_TEMPLATE.md
touch "$PROJECT_DIR"/docs/project_overview.md
touch "$PROJECT_DIR"/docs/mbse_llm_translator/{setup.md,usage.md,demo.md,architecture.md}
touch "$PROJECT_DIR"/docs/swarm_simulation/{setup.md,usage.md,demo.md,architecture.md}
touch "$PROJECT_DIR"/sandbox/progress_logs/{week_01.md,skills_tracker.xlsx}
touch "$PROJECT_DIR"/sandbox/sandbox_env/docker_sandbox/Dockerfile
touch "$PROJECT_DIR"/sandbox/sandbox_env/sandbox_requirements.txt

# Populate .gitignore
cat << EOF > "$PROJECT_DIR/.gitignore"
# Python
.venv/
__pycache__/
*.pyc
*.pyo
*.pyd
*.log
*.ipynb_checkpoints/

# ROS 2
build/
install/
log/

# Docker
*.dockerignore
*.tar.gz

# Notebooks and data
*.csv
*.h5
*.pickle

# IDE and OS
.vscode/
*.code-workspace
.DS_Store

# Sandbox
sandbox/backups/
sandbox/sandbox_env/python_venv/
EOF

# Populate README.md
cat << EOF > "$PROJECT_DIR/README.md"
# AI Robotics Transition Project

A portfolio showcasing my transition from aerospace/defense to high-tech AI roles, integrating Model-Based Systems Engineering (MBSE) with AI. Features two projects: a containerized MBSE-to-LLM translator and an autonomous drone swarm simulation.

## Projects
1. **MBSE-to-LLM Translator**: Translates SysML v2 models to natural language using LLMs and RAG pipelines, deployed on AWS.
   - [Documentation](docs/mbse_llm_translator/)
   - [Demo Video](https://youtu.be/example)
2. **Autonomous Swarm Simulation**: Simulates a drone swarm using NVIDIA Isaac Sim, ROS 2, and SysML v2 architectures.
   - [Documentation](docs/swarm_simulation/)
   - [Demo Video](https://youtu.be/example)

## Setup
1. Clone the repo: \`git clone https://github.com/yourusername/AI-Robotics-Transition.git\`
2. Install dependencies: \`pip install -r requirements.txt\`
3. Follow project-specific setup in \`docs/\` folders.

## Tech Stack
- **Languages**: Python, SysML v2
- **Tools**: ROS 2, NVIDIA Isaac Sim, Docker, AWS, LangChain, FAISS
- **Libraries**: NumPy, OpenCV, SentenceTransformers, PyTorch

## Usage
- Run the MBSE-to-LLM translator: See \`docs/mbse_llm_translator/usage.md\`
- Run the swarm simulation: See \`docs/swarm_simulation/usage.md\`

## Contributing
Contributions welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License
[MIT License](LICENSE)

## Contact
LinkedIn: [Your Profile](https://linkedin.com/in/yourprofile)
EOF

# Populate LICENSE (MIT)
cat << EOF > "$PROJECT_DIR/LICENSE"
MIT License

Copyright (c) 2025 Your Name

Permission is hereby granted, free of charge, to any person obtaining a copy...
EOF

# Populate requirements.txt
cat << EOF > "$PROJECT_DIR/requirements.txt"
numpy==1.24.3
opencv-python==4.8.0
rclpy==3.10.0
langchain==0.0.300
sentence-transformers==2.2.2
faiss-cpu==1.7.4
torch==2.0.1
torchvision==0.15.2
pyecore==0.12.0
pytest==7.4.0
pylint==2.17.4
black==23.7.0
EOF

# Populate sandbox Dockerfile
cat << EOF > "$PROJECT_DIR/sandbox/sandbox_env/docker_sandbox/Dockerfile"
FROM python:3.10-slim
WORKDIR /app
COPY sandbox_requirements.txt .
RUN pip install -r sandbox_requirements.txt
CMD ["bash"]
EOF

# Set permissions
chmod -R u+rwX,go-rwx "$PROJECT_DIR"
chown -R "$USER":"$USER" "$PROJECT_DIR"

echo "Folder structure created at $PROJECT_DIR"
# AI Robotics Transition Project

A portfolio showcasing my transition from aerospace/defense to high-tech AI roles, integrating Model-Based Systems Engineering (MBSE) with AI. Features two projects: a containerized MBSE-to-LLM translator and an autonomous drone swarm simulation.

## Projects
1. **MBSE-to-LLM Translator**: Translates SysML v2 models to natural language using LLMs and RAG pipelines, deployed on AWS.
   - [Documentation](docs/mbse_llm_translator/)
   - [Demo Video](https://youtu.be/example)
2. **Autonomous Swarm Simulation**: Simulates a drone swarm using NVIDIA Isaac Sim, ROS 2, and SysML v2 architectures.
   - [Documentation](docs/swarm_simulation/)
   - [Demo Video](https://youtu.be/example)
3. **Enterprise AI Transformation Whitepaper**: A strategic framework for migrating legacy A&D systems to AI-driven architectures using MBSE and NIST frameworks.
   - [Read Whitepaper](whitepapers/enterprise_ai_transformation.md)

## Setup
1. Clone the repo: `git clone https://github.com/yourusername/AI-Robotics-Transition.git`
2. Install dependencies: `pip install -r requirements.txt`
3. Follow project-specific setup in `docs/` folders.

## Tech Stack
- **Languages**: Python, SysML v2
- **Tools**: ROS 2, NVIDIA Isaac Sim, Docker, AWS, LangChain, FAISS
- **Libraries**: NumPy, OpenCV, SentenceTransformers, PyTorch

## Usage
- Run the MBSE-to-LLM translator: See `docs/mbse_llm_translator/usage.md`
- Run the swarm simulation: See `docs/swarm_simulation/usage.md`

## Contributing
Contributions welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License
[MIT License](LICENSE)

## Contact
LinkedIn: [Your Profile](https://linkedin.com/in/yourprofile)

# Project Structure

```text
AI-Robotics-Transition/
├── .github/
│   ├── workflows/
│   │   └── ci.yml              # GitHub Actions for CI/CD
│   └── ISSUE_TEMPLATE.md       # Template for issue reporting
├── src/
│   ├── mbse_llm_translator/    # MBSE-to-LLM Translator project
│   │   ├── docker/             # Dockerfiles and configs
│   │   ├── scripts/            # Python scripts for parsing, RAG, etc.
│   │   ├── models/             # SysML models and embeddings
│   │   ├── api/                # REST API code
│   │   └── tests/              # Unit tests
│   ├── swarm_simulation/       # Autonomous Swarm Simulation project
│   │   ├── ros2/               # ROS 2 packages
│   │   ├── isaac_sim/          # NVIDIA Isaac Sim configs/scripts
│   │   ├── sysml/              # SysML v2 models
│   │   └── tests/              # Simulation tests
│   └── common/                 # Shared utilities (e.g., logging, configs)
├── docs/
│   ├── mbse_llm_translator/    # Documentation for translator project
│   │   ├── setup.md            # Setup instructions
│   │   ├── usage.md            # How to use the tool
│   │   ├── demo.md             # Links to demo videos
│   │   └── architecture.md     # System architecture
│   ├── swarm_simulation/       # Documentation for swarm project
│   │   ├── setup.md
│   │   ├── usage.md
│   │   ├── demo.md
│   │   └── architecture.md
│   └── project_overview.md     # High-level project summary
├── whitepapers/                # Strategic leadership artifacts
│   └── enterprise_ai_transformation.md
├── notebooks/
│   ├── llm_experiments/        # Jupyter notebooks for LLM/RAG
│   └── swarm_experiments/      # Notebooks for swarm simulations
├── .gitignore                  # Ignore unnecessary files
├── LICENSE                     # License file (e.g., MIT)
├── README.md                   # Main repo README
└── requirements.txt            # Python dependencies
```
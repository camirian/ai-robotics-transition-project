# Sandbox Folder Structure

```text
sandbox/                        # Dedicated sandbox area
 ├── experiments/                # Temporary code and tests
 │   ├── python/                 # Python practice scripts
 │   ├── ros2/                   # ROS 2 node experiments
 │   ├── llm/                    # LLM and RAG experiments
 │   ├── sysml/                  # SysML v2 model drafts
 │   ├── isaac_sim/              # NVIDIA Isaac Sim test scenes
 │   └── notebooks/              # Jupyter notebooks for exploration
 ├── progress_logs/              # Track learning progress
 │   ├── week_01.md             # Weekly progress notes
 │   ├── week_02.md             # ...
 │   └── skills_tracker.xlsx    # Skills and task tracking
 ├── backups/                    # Periodic code backups
 │   ├── date_YYYYMMDD/         # Dated backup folders
 │   └── archive.tar.gz          # Compressed backups
 └── sandbox_env/                # Isolated virtual environments
     ├── python_venv/            # Python virtual environment
     └── docker_sandbox/         # Docker containers for testing
```

# Explanation of Sandbox Components

- `experiments/`: For temporary code, scripts, and simulations (e.g., NumPy exercises, ROS 2 nodes, LLM pipelines). Subdivided by tool/technology for organization.
- `progress_logs/`: Markdown files and an Excel tracker to document weekly progress, challenges, and skills gained, aligning with your 20-hour schedule.
- `backups/`: Dated snapshots of your sandbox to recover experiments or track evolution.
- `sandbox_env/`: Isolated environments (Python virtual env, Docker containers) to prevent conflicts with main project dependencies.
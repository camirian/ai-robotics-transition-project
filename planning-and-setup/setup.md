# Setup Steps

1. Create the repo on GitHub:
   - Go to [github.com/new](https://github.com/new).
   - Name: `AI-Robotics-Transition`, initialize with `README.md`, `.gitignore` (Python template), and MIT `LICENSE`.
2. Clone locally:
   ```bash
   git clone https://github.com/yourusername/AI-Robotics-Transition.git
   ```
3. Set up the structure using your project folder (`AI_Robotics_Transition_Project/`):
   - Copy relevant subfolders (`src/`, `docs/`, `notebooks/`) to the repo.
   - Create `.github/` and add `ci.yml`, `ISSUE_TEMPLATE.md`.
4. Add `requirements.txt` and initial code from Week 1 (NumPy scripts).
5. Commit and push:
   ```bash
   git add .
   git commit -m "Initial commit with repo structure and Week 1 code"
   git push origin main
   ```
6. Configure GitHub Actions:
   - Add `ci.yml` to `.github/workflows/`.
   - Test by pushing a change and checking the Actions tab.
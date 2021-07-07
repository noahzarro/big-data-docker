# Docker Development Environment


## Jupyter Notebook

Run:
```bash
jupyter notebook --allow-root
```

## Postges

Start:
```bash
service postgresql start
cd /workspaces/docker/bigdata-exam-environment/Environment/postgres/
sudo -u postgres ./import.sh
```
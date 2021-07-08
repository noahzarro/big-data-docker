# Docker Development Environment

Run everything with `start.sh`

## Jupyter Notebook

Run:
```bash
jupyter notebook --allow-root
```

## Postges

Run:
```bash
service postgresql start
```

First use:
```bash
service postgresql start
cd /workspaces/docker/bigdata-exam-environment/Environment/postgres/
sudo -u postgres ./import.sh
```
or
```bash
./init.sh
```

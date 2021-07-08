#!/usr/bin/env bash
service postgresql start
cd /workspaces/docker/bigdata-exam-environment/Environment/postgres/
sudo -u postgres ./import.sh
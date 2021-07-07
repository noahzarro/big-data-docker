#!/usr/bin/env bash

psql -c "DROP DATABASE IF EXISTS examdb;"
psql -c "CREATE DATABASE examdb;"
psql -f examdatabase.sql examdb
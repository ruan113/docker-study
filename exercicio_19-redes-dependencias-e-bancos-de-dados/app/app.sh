#!/bin/sh
pip install bottle==0.12.13 psycopg2
echo "pip dependencies installed"
python -u sender.py
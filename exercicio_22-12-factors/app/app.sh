#!/bin/sh
pip install bottle==0.12.13 psycopg2 redis==2.10.5
echo "pip dependencies installed"
python -u sender.py

# A aula especifica psycopg2==2.7.1 mas no meu esta versão estava problematica e não deixava a aplicação iniciar
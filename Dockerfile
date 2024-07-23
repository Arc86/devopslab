FROM python:3.9-slim\nCOPY app.py /\nCMD ['python', '/app.py']

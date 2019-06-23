FROM python:3.6

WORKDIR /app
COPY requirements.txt /app/
RUN  pip install -r /app/requirements.txt

COPY . /app/

EXPOSE 8000
CMD [ "gunicorn", "specimen.wsgi", "--bind=0.0.0.0:8000" ]

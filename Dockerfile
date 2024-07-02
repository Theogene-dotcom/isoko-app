FROM python:3.12.4
WORKDIR /travail
COPY ./isoko-app ./
RUN pip install --upgrade pip --no-cache-dir
RUN pip install -r /travail/requirements.txt 
EXPOSE 8000
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
#CMD ["gunicorn", "--bind", "0.0.0.0:8000", "main_app.wsgi:application"]                                                  
FROM python:3.8

ARG APP_FOLDER="techtrends"

WORKDIR /app

COPY /$APP_FOLDER/ /app/

RUN  python -m pip install --upgrade pip && \
    pip3 install -r requirements.txt && \
     python init_db.py

EXPOSE 3111

CMD ["python", "app.py"]
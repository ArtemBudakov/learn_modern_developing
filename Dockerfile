FROM python:3.12

WORKDIR /app


COPY . /app/
RUN pwd
RUN ls /app
RUN apt-get update && \
    pip install --upgrade pip && \
    pip install -U poetry && \
    poetry config virtualenvs.create false && \
    poetry install

RUN poetry install

CMD ["sh", "-c", "poetry run gunicorn backend.wsgi:application --bind 0.0.0.0:8000 --log-level=info --timeout=600 --workers 4"]

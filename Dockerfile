FROM python:2.7

WORKDIR /usr/src/app
COPY ./techtrends ./

RUN python init_db.py
RUN pip install -r requirements.txt

EXPOSE 3111

CMD [ "python", "app.py" ]
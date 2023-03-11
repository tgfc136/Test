FROM python:3.9.16-alpine3.17

WORKDIR /opt

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python3", "run.py" ]

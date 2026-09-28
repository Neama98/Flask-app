FROM ubuntu
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install flask --break-system-packages
COPY app.py /app.py
ENV FLASK_APP=app.py
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
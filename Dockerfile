FROM registry.access.redhat.com/ubi8/ubi:latest
RUN yum -y update
RUN yum -y install python3

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install click
RUN pip3 install Flask
RUN pip3 install importlib-metadata
RUN pip3 install itsdangerous
RUN pip3 install Jinja2
RUN pip3 install MarkupSafe
RUN pip3 install Werkzeug
RUN pip3 install zipp


COPY . /app

ENTRYPOINT ["python3"]
CMD ["app.py"]

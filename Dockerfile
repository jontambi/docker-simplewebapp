FROM centos

RUN yum install -y epel-release

RUN yum update -y

RUN yum install -y python36 python3-pip

RUN pip3 install flask

COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0

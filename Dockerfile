FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends python3 python-pip python-setuptools git
RUN pip install wheel virtualenv
RUN git clone https://github.com/google/har-sanitizer.git && cd har-sanitizer && virtualenv -p $(which python2.7) venv

COPY ./run-har-sanitizer.sh .

EXPOSE 8080

CMD ./run-har-sanitizer.sh

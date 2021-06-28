FROM ubuntu:20.04

RUN apt-get update && apt-get install openjdk-8-jdk -y
RUN apt-get update && apt install postgresql-12 -y


RUN apt-get update && apt install python3 -y
RUN apt-get -y install python3-pip
RUN apt-get install libpq-dev -y
RUN pip3 install ipython-sql psycopg2
RUN pip3 install jupyter

RUN apt-get update && apt install wget -y
RUN wget https://downloads.apache.org/spark/spark-3.1.2/spark-3.1.2-bin-hadoop2.7.tgz
RUN tar xvf spark-3.1.2-bin-hadoop2.7.tgz
RUN mv spark-3.1.2-bin-hadoop2.7 /opt/spark
RUN rm spark-3.1.2-bin-hadoop2.7.tgz


ENV SPARKHOME="/opt/spark"
ENV PATH="${SPARKHOME}/bin:${SPARKHOME}/sbin:${PATH}"

RUN wget https://github.com/RumbleDB/rumble/releases/download/v1.12/spark-rumble-1.12.0-for-spark-2.jar -P /workspaces/rumble
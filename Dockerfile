FROM python:3.8-rc-buster
RUN apt-get update && apt-get -y install --fix-missing apt-transport-https
RUN apt-get -y install zip libltdl7
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get -y update && apt-get -y install yarn nodejs npm python3-pip
RUN pip3 install doit pystache jinja2 paramiko

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
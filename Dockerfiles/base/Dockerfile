FROM michaelpc/perl-base:latest

USER root

WORKDIR /app

COPY . .

RUN cpanm --notest --installdeps .

RUN /app/src/plugins/web-plugins/src/bin/install-plugins-deps-in-Dockerfile

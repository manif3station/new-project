FROM michaelpc/perl-base:latest

USER root

WORKDIR /app

COPY . .

RUN cpanm --notest --installdeps .

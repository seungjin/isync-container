FROM fedora:latest

RUN dnf update -y; dnf install -y isync;
RUN useradd seungjin
USER seungjin

WORKDIR /home/seungjin

ENTRYPOINT ["mbsync"]
CMD ["-a"]

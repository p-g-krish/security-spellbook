FROM kalilinux/kali-rolling:latest
MAINTAINER  Heitor Gouvêa <hi@heitorgouvea.me>

WORKDIR /home/
EXPOSE 1337 9090

RUN apt -qy update
RUN apt list --upgradable
RUN apt -qy dist-upgrade

RUN apt install -qy \
	gcc \
  	wget \
	python3 \
  	python-pip \
  	man \
  	unzip \
  	wpscan \
  	sqlmap \
  	john \
	amass \
  	radare2 \
  	apktool \
  	exploitdb \
  	weevely \
  	fcrackzip \
  	metasploit-framework \
  	hashid \
  	smali \
  	jadx \
  	whois \
  	hydra \
  	netcat \
  	fping \
  	exiftool \
  	steghide \
  	binwalk \
  	wordlists \
	mycli \
	golang \
	dirb \
	testssl.sh \
	libwww-perl \
	libdbd-mysql-perl \
  	&& apt clean \
  	&& apt -y autoremove \
  	&& rm -rf /var/lib/apt/lists/*

RUN gunzip /usr/share/wordlists/rockyou.txt.gz
RUN pip install httplib2
RUN cpan Switch Switch IO::Socket::SSL LWP::UserAgent LWP::Protocol::https HTTP::Request JSON Mojolicious::Lite Config::Simple WWW::Mechanize re::engine::TRE DBIx::Custom
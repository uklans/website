FROM 1and1internet/ubuntu-16-apache-php-7.2:latest
MAINTAINER Jessica Smith <jess@epiclan.co.uk>

ENV HUGO_VERSION=0.31.1
COPY hugo /tmp/build/
ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz /tmp
RUN apt-get -y update \
 && apt-get -y install git \
 && git clone https://github.com/VibroAxe/hugo-theme-html5up-landed.git /tmp/build/themes/hugo-theme-html5up-landed \
 && tar -xf /tmp/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -C /tmp \
 && mkdir -p /usr/local/sbin \
 && mv /tmp/hugo /usr/local/sbin/hugo \
 && rm -rf /tmp/hugo_${HUGO_VERSION}_linux_amd64 \
 && /usr/local/sbin/hugo --source="/tmp/build" --destination="/var/www/html" --cleanDestinationDir -D -v \
 && rm -rf /var/lib/apt/lists/*
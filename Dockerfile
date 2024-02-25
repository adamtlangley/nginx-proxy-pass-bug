FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
ARG TZ="Europe/London"
RUN apt-get -qq update -y && \
    apt-get -y -qq install \
    nginx  && \
    echo "Packages Installed"

COPY nginx /etc/nginx/sites-enabled/

COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

EXPOSE 80

CMD ["/startup.sh"]

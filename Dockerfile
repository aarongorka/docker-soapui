FROM java:openjdk-8-jdk

#  Version
ENV   SOAPUI_VERSION  5.4.0

# Download and unarchive SoapUI
RUN mkdir -p /opt &&\
    curl -s "https://s3.amazonaws.com/downloads.eviware/soapuios/${SOAPUI_VERSION}/SoapUI-${SOAPUI_VERSION}-linux-bin.tar.gz" \
    | gunzip -c - | tar -xf - -C /opt && \
    ln -s "/opt/SoapUI-${SOAPUI_VERSION}" /opt/SoapUI

WORKDIR /srv/app

ENV PATH ${PATH}:/opt/SoapUI/bin

CMD ["/opt/bin/entry_point.sh"]

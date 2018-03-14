FROM concourse/buildroot:git

ADD https://github.com/pivotalservices/cf-mgmt/releases/download/v0.0.85/cf-mgmt-linux /usr/bin/cf-mgmt
RUN chmod +x /usr/bin/cf-mgmt && cf-mgmt --version

ADD https://github.com/s-matyukevich/yaml2json/releases/download/0.0.1/yaml2json /usr/bin/yaml2json
RUN chmod +x /usr/bin/yaml2json

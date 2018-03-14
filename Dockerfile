FROM concourse/buildroot:git

ADD https://github.com/pivotalservices/cf-mgmt/releases/download/v0.0.85/cf-mgmt-linux /usr/bin/cf-mgmt
RUN chmod +x /usr/bin/cf-mgmt && cf-mgmt --version
RUN pip install pygithub

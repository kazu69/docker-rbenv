#
# VERSION 0.0.1
#

FROM centos
MAINTAINER kazu69 "https://github.com/kazu69"
EXPOSE 22
EXPOSE 80:8080

# Setup
RUN yum update -y
RUN yum -y  install git gcc libyaml libyaml-devel zlib zlib-devel readline readline-devel openssl openssl-devel libxml2 libxml2-devel libxslt libxslt-devel
RUN yum clean all

# Install rbenv
RUN git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv

# Set path
RUN echo '# rbenv' > /etc/profile.d/rbenv.sh
RUN echo 'export PATH="/usr/local/rbenv/bin:$PATH"' >> /etc/profile.d/rbenv.sh
ENV PATH /usr/local/rbenv/bin:$PATH
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
RUN chmod +x /etc/profile.d/rbenv.sh

# Install ruby-build
RUN mkdir /usr/local/rbenv/plugins
RUN git clone https://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build

ENV RBENV_ROOT /usr/local/rbenv
ENV PATH $RBENV_ROOT/shims:$RBENV_ROOT/bin:$PATH

# Install ruby
ADD ./.ruby-version /root/.ruby-version
ADD ./install.sh /root/install.sh
RUN /bin/bash /root/install.sh /root/.ruby-version

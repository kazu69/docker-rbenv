#
# VERSION 0.0.1
#

FROM centos
MAINTAINER kazu69 "https://github.com/kazu69"
ADD ./config.yml /root/config.yml

# Setup
RUN yum update -y
RUN yum -y install git gcc make zlib-devel openssl-devel readline-devel ncurses-devel gdbm-devel db4-devel libffi-devel tk-devel libyaml-devel
RUN yum clean all

# Install rbenv
RUN git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv

## Install ruby-build
RUN mkdir /usr/local/rbenv/plugins
RUN git clone https://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build
RUN /usr/local/rbenv/plugins/ruby-build/install.sh

# Set path
ENV PATH /usr/local/rbenv/bin:$PATH
RUN echo '# rbenv setup' > /etc/profile.d/rbenv.sh
RUN echo 'export PATH="/usr/local/rbenv/bin:$PATH"' >> /etc/profile.d/rbenv.sh
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
RUN echo 'eval "$(rbenv init -)"' >> .bashrc
RUN chmod +x /etc/profile.d/rbenv.sh
ENV PATH /usr/local/rbenv/bin:/usr/local/rbenv/shims:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Install ruby
RUN rbenv install 2.1.1
RUN rbenv local 2.1.1
RUN gem install bundler

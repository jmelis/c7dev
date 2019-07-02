FROM centos:7

RUN yum install -y sudo && \
    useradd jmelis && \
    gpasswd -a jmelis wheel && \
    echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel
    
RUN yum install -y epel-release && \
    yum install -y sudo git python-pip python-ipython-console python-virtualenv && \
    yum clean all

WORKDIR /home/jmelis

USER jmelis

FROM ubuntu:precise

MAINTAINER Vilius Lukosius <vilius.lukosius@teliasonera.com>

#set-up java, extracted version needs to be present @ resources folder.
ADD tmp/jdk1.6.0_26 /usr/lib/jvm/jdk1.6.0_26

RUN update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.6.0_26/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.6.0_26/bin/javac" 1
RUN update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.6.0_26/bin/javaws" 1

ENV JAVA_HOME /usr/lib/jvm/jdk1.6.0_26
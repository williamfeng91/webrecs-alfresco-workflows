ARG WEBRECS_VERSION=6.2
FROM webrecs/share-webrecs-ext:${WEBRECS_VERSION}
ARG TOMCAT_DIR=/usr/local/tomcat
ARG ZIPFILE=webrecs-workflow-share.zip
COPY dist/$ZIPFILE $TOMCAT_DIR
RUN cd $TOMCAT_DIR; unzip -B $ZIPFILE; rm $ZIPFILE
FROM webrecs/alfresco-webrecs-ext:${WEBRECS_VERSION}
ARG ZIPFILE=webrecs-workflow-alfresco.zip
COPY dist/$ZIPFILE $TOMCAT_DIR
RUN cd $TOMCAT_DIR; unzip -B $ZIPFILE; rm $ZIPFILE
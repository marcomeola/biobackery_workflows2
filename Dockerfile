#meolam/workflows_usearch

# author
MAINTAINER Marco Meola
LABEL maintainer="marco_meola@hotmail.com"

FROM biobakery/workflows

USER root
COPY /bin/usearch/usearch /usr/bin/usearch
RUN chmod -v 0755 /usr/bin/usearch

USER linuxbrew
RUN biobakery_workflows_databases --install wmgx
RUN biobakery_workflows_databases --install 16s

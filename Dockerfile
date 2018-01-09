FROM biobakery/workflows

USER root
COPY usearch /usr/bin/usearch
RUN chmod -v 0755 /usr/bin/usearch

USER linuxbrew
RUN biobakery_workflows_databases --install wmgx
RUN biobakery_workflows_databases --install 16s

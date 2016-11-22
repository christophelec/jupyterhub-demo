FROM jupyter/scipy-notebook:2d878db5cbff

RUN pip install numpy

USER root

COPY docker-entrypoint.sh /srv/docker-entrypoint.sh
COPY pip.conf /etc/pip.conf

RUN chmod +x /srv/docker-entrypoint.sh

RUN apt-get install git -y

ENTRYPOINT ["tini", "-v", "--", "/srv/docker-entrypoint.sh"]

CMD ["/usr/local/bin/start-singleuser.sh"]

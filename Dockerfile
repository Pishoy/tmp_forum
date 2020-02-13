FROM  bishoyabdo/forum:latest
RUN pip uninstall -y uwsgi flask pynacl uwsgi requests flask_sessionstore
RUN pip3 install uwsgi flask pynacl uwsgi requests flask_sessionstore
COPY start_discourse.sh /.start_discourse.sh
RUN chmod +x /.start_discourse.sh
ENTRYPOINT ["/.start_discourse.sh"]

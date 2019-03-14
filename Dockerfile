FROM lambci/lambda:build-python3.7
RUN pip install -t /opt/python/ python-Levenshtein==0.12.0

# zip
RUN cd /opt; zip -r ../layer.zip *; \
    echo "/layer.zip is ready"; \
    ls -alh /layer.zip;

#WORKDIR /var/task
############################################################
# Modified By - Abhineet Gupta
# Last modified on - 2022-03-04
############################################################
FROM python:3.10.2-slim

RUN pip install --upgrade pip && \
    pip install \
    'securid'

# copies your sdtid file to the docker image.
COPY *.sdtid /root/my_private_file.sdtid

# Additional commands can be added here as needed, such as --password if your sdtid file is encrypted. Refer to 
# (https://github.com/andreax79/python-securid) for all available options.
ENTRYPOINT ["securid", "-f", "/root/my_private_file.sdtid", "-v"]

# docker build -t rsa_securid_token .

FROM python:3.8 as builder

ENV PATH="$VIRTUAL_ENV/bin:$PATH"

COPY ./ /opt

WORKDIR /opt

RUN pip install tox && tox -p


FROM python:3.8

COPY --from=builder /opt/dist/*.tar.gz /opt
COPY requirements.txt /opt

WORKDIR /opt

RUN pip install -r requirements.txt \
	&& pip install *.tar.gz \
	&& rm -f *.tar.gz requirements.txt

ENTRYPOINT ["readgroup_json_db"]

CMD ["--help"]

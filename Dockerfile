FROM ncleguizamon/sam-cli-aws:9

COPY entrypoint.sh /entrypoint.sh


ENTRYPOINT sh ./entrypoint.sh
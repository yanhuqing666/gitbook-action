
FROM actiontech/gitbook-action
  
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh", "--no-sandbox"]

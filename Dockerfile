
FROM actiontech/gitbook-action
  
COPY entrypoint.sh /entrypoint.sh
ENV QTWEBENGINE_DISABLE_SANDBOX 1
ENTRYPOINT ["/entrypoint.sh", "--no-sandbox"]

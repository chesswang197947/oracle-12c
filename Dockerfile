FROM sath89/oracle-12c

# 解决无法更改SID的问题

MAINTAINER WangQi chesswang197947@hotmail.com

# 默认的SID。如果需要修改SID，请重设
ENV ORACLE_SID 		xe

ADD entrypoint.sh /entrypoint.sh

EXPOSE 1521
EXPOSE 8080
VOLUME ["/docker-entrypoint-initdb.d"]

ENTRYPOINT ["/entrypoint.sh"]
CMD [""]

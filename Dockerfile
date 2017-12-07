# Pull base image
FROM gethpbft/test2:latest

RUN mkdir /root/hyperledgerRocksDB
RUN cd /root/hyperledgerRocksDB && mkdir data0 data1 data2 data3 

ENV FILE_SYSTEM_PATH /root/hyperledgerRocksDB
ENV EXEC_PATH /root/pbft

COPY modify.py /root/gopath/src/github.com/yeongchingtarn/geth-pbft/modify.py
RUN chmod +x /root/gopath/src/github.com/yeongchingtarn/geth-pbft/modify.py

WORKDIR /root/gopath/src/github.com/yeongchingtarn/geth-pbft
#RUN python /home/xiaobei/test/modify.py $FILE_SYSTEM_PATH

CMD ["python","modify.py","$FILE_SYSTEM_PATH"]
#WORKDIR $EXEC_PATH



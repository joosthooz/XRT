FROM centos:7

# Install dependency packages
RUN yum install -y git devtoolset-9

RUN mkdir -p /work && \
    cd /work && \
    git clone https://github.com/Xilinx/XRT && \
    cd XRT/build && \
    ../src/runtime_src/tools/scripts/xrtdeps.sh

RUN mkdir -p /work/joostXRT && cd /work/joostXRT && \
    git clone https://github.com/joosthooz/XRT

ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache

RUN cd /work/joostXRT/XRT/build && \
    git checkout joostbranch && \
    git pull && \
    scl enable devtoolset-9 "bash -c /work/joostXRT/XRT/build/build.sh"
    

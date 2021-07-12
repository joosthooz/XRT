FROM centos:7

# Install dependency packages
RUN yum install -y git devtoolset-9

RUN mkdir -p /work && \
    cd /work && \
    git clone https://github.com/joosthooz/XRT && \
    cd XRT/build && \
    git checkout joostbranch
    ../src/runtime_src/tools/scripts/xrtdeps.sh

RUN scl enable devtoolset-9 "bash -c /work/XRT/build/build.sh"

    


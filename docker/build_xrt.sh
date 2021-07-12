docker build . -t xrtbuild
#docker run --name xrtbuild xrtbuild #I don't understand, but it seems this only needs to be executed once
docker cp xrtbuild:/work/XRT/build/Release ./

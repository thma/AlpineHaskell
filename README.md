# AlpineHaskell
an Alpine based docker image providing all runtime libs required by Haskell programs at runtime.

## basic idea
The basic idea behind this project is to provide a streamlined docker image that provides 
all runtime infrastructure required by Haskell applications but maintains a small footprint (< 9 MB).

After building the AlpineHaskell image you can derive runtime images for your haskell applications as shown in the following 
example Dockerfile:
'''
FROM alpine-haskell

# create content mountpoint
RUN mkdir content

# copy the actual executable
COPY ./.stack-work/install/x86_64-linux-nopie/lts-11.2/8.2.2/bin/HsWiki /hswiki

# expose http port to outside world
EXPOSE 3000

# startup the server
CMD ["/hswiki"]
'''

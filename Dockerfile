FROM alpine:3.7

# copy libs needed by haskell runtime
# run prepare-haskell-libs.sh to generate the root dir
ADD root /

#RUN apk update \
# && apk add xz make perl alpine-sdk build-base 
 #make xz perl



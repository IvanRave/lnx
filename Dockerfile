FROM buildpack-deps:jessie

RUN apt-get update && apt-get install -y --no-install-recommends \
		emacs24-nox \
		golang \
	&& rm -rf /var/lib/apt/lists/*

ENV GOPATH="$HOME/go"

RUN go get github.com/tools/godep

RUN go get github.com/spf13/hugo

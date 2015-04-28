FROM buildpack-deps:jessie

RUN apt-get update && apt-get install -y --no-install-recommends \
		emacs24-nox \
		golang \
	&& rm -rf /var/lib/apt/lists/*

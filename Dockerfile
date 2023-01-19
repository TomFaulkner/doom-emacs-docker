FROM registry.docker.com/andreacorallo/emacs-nativecomp:latest
    MAINTAINER Tom Faulkner <faulkner@pm.me>
RUN apt-get update && apt-get -yy install git
RUN git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
RUN ~/.emacs.d/bin/doom install --env --fonts --hooks -!
ENTRYPOINT emacs

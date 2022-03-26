FROM klakegg/hugo:0.92.1-ext-asciidoctor
ARG ALPINE_VERSION=3.12
ARG USERNAME=vscode

# install asciidoctor extensions
RUN gem install asciidoctor-pdf asciidoctor-html5s  --no-document

RUN apk add --no-cache --virtual .rubymakedepends \
    build-base \
    libxml2-dev \
    libxslt-dev \
    ruby-dev \
   && gem install asciidoctor-epub3 --no-document \
   && apk del -r --no-cache .rubymakedepends

RUN gem install kindlegen --no-document
# install py3-pip and python packages
RUN apk update
RUN apk add --no-cache py3-pip
RUN pip3 install inquirer

# install curl zsh git and openssh
RUN apk add --no-cache curl zsh git openssh

# make zsh default shell for default user
RUN adduser -D -s /bin/zsh ${USERNAME}

# install oh-my-zsh for default user
USER vscode
RUN zsh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" ||true
ENTRYPOINT ["zsh"]
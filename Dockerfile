FROM jekyll/jekyll

WORKDIR /usr/src/

ADD ./blog/ /usr/src/

RUN bundle install

EXPOSE 4000

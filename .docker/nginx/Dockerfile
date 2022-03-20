FROM nginx
RUN  apt-get update \
  && apt-get install -y wget

RUN rm -rf /etc/nginx/conf.d/default.conf

COPY ./nginx.conf /etc/nginx/conf.d/default.conf


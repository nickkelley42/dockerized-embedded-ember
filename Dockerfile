FROM node:erbium as common

RUN mkdir -p /ember-subroute
COPY ./ember-subroute /ember-subroute

WORKDIR /ember-subroute
RUN npx ember build

FROM nginx

COPY ./bin/run.sh /run.sh
COPY ./etc/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /web/main/careers

COPY ./public /web/main
COPY --from=common /ember-subroute/dist /web/main/careers/
COPY ./public/careers/index.html /web/main/careers/index.html

CMD ["/run.sh"]

FROM klakegg/hugo:0.72.0 as hugo
COPY / /src
WORKDIR /src
RUN hugo

FROM bitnami/nginx:1.17.10
COPY --from=hugo /src/public /app

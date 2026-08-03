FROM nginx:1.30.4

ENV TZ="Asia/Taipei"
ARG build_dir=dist
COPY ./${build_dir} /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
FROM nginx

COPY index.html      /usr/share/nginx/html
COPY index.css       /usr/share/nginx/html
COPY animate.min.css /usr/share/nginx/html
COPY .version        /usr/share/nginx/html

COPY nginx.conf      /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

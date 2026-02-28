FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY index.html .
RUN echo "Building optimized image"
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

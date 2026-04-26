FROM nginx:alpine

# Static assets (index.html, quote.html, lead.html, styles.css, images, ...)
COPY . /usr/share/nginx/html

# Runtime config: nginx's official entrypoint runs envsubst on *.template files
# and writes the result to /etc/nginx/conf.d/. We restrict envsubst to the vars
# we actually use so unrelated `$variable` references in the config (if added
# later) won't be silently mangled.
COPY nginx.conf /etc/nginx/templates/default.conf.template
ENV NGINX_ENVSUBST_FILTER="^(PORT|BACKEND_API_URL)$"

# Hard fail with a readable message if required env vars are missing, instead
# of letting nginx crash later with a cryptic "unknown variable" parse error.
COPY docker-entrypoint.d/10-require-env.sh /docker-entrypoint.d/10-require-env.sh
RUN chmod +x /docker-entrypoint.d/10-require-env.sh

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
 

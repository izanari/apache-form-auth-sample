FROM httpd:2.4.52-alpine

COPY httpd-config/form-auth.conf /usr/local/apache2/conf/extra/form-auth.conf
COPY httpd-config/.htpasswd /usr/local/apache2/etc/.htpasswd

RUN { \
  sed -i -e "286 s/    AllowOverride None/     AllowOverride FileInfo/" /usr/local/apache2/conf/httpd.conf; \
  }

RUN { \
  echo "Include conf/extra/form-auth.conf"; \
  } >> /usr/local/apache2/conf/httpd.conf
From linode/lamp


COPY src/DedecmsV53-UTF8-Final.tar.gz /tmp/
COPY src/start.sh /start.sh

RUN echo 'building dedecms5.3utf8 image' \
    && rm -rf /var/www/example.com/public_html/* \
    && tar -xzvf /tmp/DedecmsV53-UTF8-Final.tar.gz -C /var/www/example.com/public_html/ \
    && mv /var/www/example.com/public_html/DedecmsV53-UTF8-Final/* /var/www/example.com/public_html/ \
    && rm -rf /var/www/example.com/public_html/DedecmsV53-UTF8-Final \
    && chmod +x /start.sh

EXPOSE 80 3306

CMD ["/start.sh"]

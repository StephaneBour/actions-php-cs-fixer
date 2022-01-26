FROM php:8.1-cli

LABEL version="8.1"
LABEL repository="https://github.com/StephaneBour/actions-php-cs-fixer"
LABEL homepage="https://github.com/StephaneBour/actions-php-cs-fixer"
LABEL maintainer="Stéphane Bour <stephane.bour@gmail.com>"

RUN curl -L https://cs.symfony.com/download/php-cs-fixer-v3.phar -o /php-cs-fixer

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh && chmod a+x /php-cs-fixer
ENTRYPOINT ["/entrypoint.sh"]

FROM bdossantos/php-lol:8.2

LABEL version="8.0-bdossantos"
LABEL repository="https://github.com/StephaneBour/actions-php-cs-fixer"
LABEL homepage="https://github.com/StephaneBour/actions-php-cs-fixer"
LABEL maintainer="Stéphane Bour <stephane.bour@gmail.com>"

RUN apt-get update && apt-get install -y curl

RUN curl -L https://cs.symfony.com/download/php-cs-fixer-v3.phar -o /php-cs-fixer

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh && chmod a+x /php-cs-fixer
ENTRYPOINT ["/entrypoint.sh"]

# Manifesto

# imagem
FROM node:14.17.0-slim

RUN apt update && apt install -y wget netcat git

RUN wget -q -O /usr/bin/wait-for https://raw.githubusercontent.com/eficode/wait-for/v2.2.3/wait-for && \
    chmod +x /usr/bin/wait-for

# cria diretorio dentro do container
USER node

WORKDIR /home/node/app

# executado no momento em que foi gerado, comando pro container ficar em pé
# CMD [ "tail", "-f", "/dev/null" ]
CMD [ "/home/node/app/start.sh" ]
# chmod +x start.sh
#comando para criar imagem a partir do manifesto docker build -t minha-imagem-node .    -- tem que estar no diretorio o dockerfile

# rodar o container docker run -d -v $(pwd):/home/node/app -p 8000:3000  minha-imagem-node

# docker ps

# docker exec -it idImagem /bin/bash
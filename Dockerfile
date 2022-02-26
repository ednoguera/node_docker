# Define a imagem base para a aplicação
FROM node:10

# Diretório responsável por executar a aplicação no container
WORKDIR /src

# 
COPY package*.json ./

# instala o projeto
RUN npm install

# Copia os passos anteriores para o container
COPY . .

# Ativa a porta 3000 pro projeto
# EXPOSE 3000

# Executa o projeto
CMD ["node", "app.js"]

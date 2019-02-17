FROM node
LABEL maintainer mourougan@gmail.com
RUN git clone https://github.com/mourou-tebs/todo.git
WORKDIR todo
RUN npm install
RUN npm audit fix
RUN chmod -R 777 /todo
EXPOSE 8000
CMD ["npm","start"]


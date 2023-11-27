#качаем убунту
From ubuntu:latest
#качаем апдейт и устанавливаем
RUN apt-get update && apt-get install -y \
#установка пакета x11
x11-apps \
#установка пакета xauth 
xauth \
#установка пакета openjdk
openjdk-11-jre\
#команда для удаления кэша apt
&& rm -rf /var/lib/apt/lists/*
#установка в папку PR6
WORKDIR /PR6
#копирка в контейнер
COPY calc.jar /PR6/
#запуск первого дисплея 
ENV DISPLAY=:0
#запуск java
CMD ["java" , "-jar" , "/PR6/calc.jar"]
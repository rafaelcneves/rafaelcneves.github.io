---
published: true
title: Instalando sun jdk 6 no ubuntu
layout: post
---
Como primeiro post deste blog, vou passar algo que sempre dá problema quando estou re-instalando minha máquina linux, instalar o java sdk e o plugin para o browser.

Como não funcionou o plugin na versão 7 aqui <del>acho que foi por causa do proxy</del>, vou passar da versão 6 que funcionou muito bem aqui.

Alguns podem perguntar "por que não instalo o openjdk?", a resposta é simples, sempre deu problema comigo na hora de executar algo, então eu evito.

<strong>Instalando Sun JDK 6 no Ubuntu 12.04: </strong>

Primeiramente faça o download do sun jdk 6 neste <a href="http://www.oracle.com/technetwork/java/javase/downloads/jdk-6u32-downloads-1594644.html" target="_blank">link</a>.
Após dê permissão de execução ao mesmo:

`chmod +x jdk-6u32-linux-x64.bin`

Execute o binário:

`./jdk-6u32-linux-x64.bin`

Mova a pasta gerada para a seguinte pasta:

`sudo mv jdk1.6.0_32 /usr/lib/jvm/`

Instalando o novo source do java no sistema:

`sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.6.0_32/bin/javac 1`
`sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.6.0_32/bin/java 1`
`sudo update-alternatives --install /usr/bin/javaws javaws /usr/lib/jvm/jdk1.6.0_32/bin/javaws 1`

Atribuindo o java default:

`sudo update-alternatives --config javac`
`sudo update-alternatives --config java`
`sudo update-alternatives --config javaws`

Versão do java (teste):

`java -version`

Verifique se os links do sistema apontam para o local correto:

`ls -la /etc/alternatives/java*`

Instalando o plugin do java no Mozilla Firefox (possivelmente para o Chrome):

64-Bit jdk

`sudo ln -s /usr/lib/jvm/jdk1.6.0_32/jre/lib/amd64/libnpjp2.so /usr/lib/mozilla/plugins`

32-Bit jdk

`sudo ln -s /usr/lib/jvm/jdk1.6.0_32/jre/lib/i386/libnpjp2.so /usr/lib/mozilla/plugins`

Utilizei para este post um outro blog que também mostra como instalar a versão 7 do java.
<div style="border:1px solid #86C0FF;background-color:#b6d9ff;padding:20px 20px 20px 80px;background-image:url('http://rnevesblog.files.wordpress.com/2012/08/url.png');border-radius:3px;background-repeat:no-repeat;background-position:10px center;margin-top:35px;"><a href="http://www.devsniper.com/ubuntu-12-04-install-sun-jdk-6-7/" target="_blank">Post original</a></div>
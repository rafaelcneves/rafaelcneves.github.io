---
published: false
title: Instalando ruby on rails
layout: post
tags: [linux, rails, ruby]
categories: [rubyonrails]
comments: true
---
Uma pergunta que sempre me fazem, principalmente na faculdade, é "como instalo ruby on rails na minha máquina?". Então resolvi fazer um post sobre isso.

Vou mostrar como fazer isso no linux. Usuários de windows, podem utilizar do link no final da página, apesar de eu não recomendar o uso no windows.

Primeiro passo, instalar o rvm, uma ferramenta que facilita muito o uso de varias versões de ruby na mesma máquina.
Utilizamos o seguinte comamdo para instalar:

    $ \curl -L https://get.rvm.io | bash -s stable --ruby

tente executar para ver se funcionou:

    $ rvm --version

caso não funcione, é possível que você precise de mais algo, normalmente para trabalhar com o gnome-terminal é necessário alterar uma configuração, tudo isso se encontra presente no site do <a href="https://rvm.io//" target="_blank">rvm</a>

após estar com o rvm funcionando, rode o seguinte comando para instalar o ruby, neste caso a versão 1.9.2, versão atual na data deste post:

    $ rvm install 1.9.2

para verificar se instalou corretamente, experimente executar:

    $ ruby --version

após isso, já estando com o ruby instalado, certamente você já poderá utilizar o console do ruby, mas como não é tudo o que queremos, iremos instalar agora o rails:

    $ gem install rails

este comando já instalará a ultima versão, 3.2.12, versão atual na data deste post.
nesse momento já devemos ser capazes de criar uma aplicação rails com o seguinte comando dentro da pasta que você desejar manter seu projeto

    $ rails new

e para poder acessar essa aplicação iremos precisar de um servidor http rodando na maquina, para isso recomendo uma gem, que ela serve tanto como plugin para um servidor já instalado manualmente, ou pode fazê-lo baixar o nginx, e configurá-lo corretamente para você somente utilizar, muito recomendado para você desenvolvedor que precisa executar a aplicação localmente, afins de teste.
e podemos instalá-la através do comando:

    $ gem install passenger

mais informações de como configurar o passenger podem ser encontrados no próprio site do <a href="https://www.phusionpassenger.com/" target="_blank">passenger</a>.

---
published: true
title: Recuperando GRUB com 3 comandos
layout: post
tags: [grub, linux]
categories: [linux]
---
Um dos acontecimentos mais frequentes com os usuários de dual boot é a perca do Grub. Isso geralmente acontece quando você resolve formatar seu Windows, que ao ser reinstalado apaga seu querido Grub.

Você vai precisar de um CD-Live do linux, inicialize-o, assim que carregar, entre no seu terminal e execute os passos a seguir:

OBS: caso esteja utilizando outro SO que não o Ubuntu, faça o login como ROOT

<ol>
<li>Verificando a partição referente ao seu GNU/LINUX
[sourcecode language="text" toolbar="false"]
$ sudo fdisk -l
[/sourcecode]
</li>
<li>
Vamos montar o seu sistema de arquivos na sua partição GNU/Linux no diretório /mnt
[sourcecode language="text" toolbar="false"]
$ sudo mount -t ext4 /dev/sda6 /mnt
[/sourcecode]
Neste caso o meu sistema de arquivos é EXT4 e a minha partição Linux é a sda6, troque esses campos conforme a sua configuração.
</li>
<li>
Instalação do Grub
[sourcecode language="text" toolbar="false"]
$ sudo grub-install --root-directory=/mnt /dev/sda
[/sourcecode]
</li>
</ol>


<div style="border:1px solid #86C0FF;background-color:#b6d9ff;padding:20px 20px 20px 80px;background-image:url('http://rnevesblog.files.wordpress.com/2012/08/url.png');border-radius:3px;background-repeat:no-repeat;background-position:10px center;margin-top:5px;"><a href="http://www.vivaolinux.com.br/dica/Como-recuperar-o-GRUB-em-3-comandos-Esse-funciona/" target="_blank">Referência</a></div>
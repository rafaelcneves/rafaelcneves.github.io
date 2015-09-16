---
published: true
title: Recuperando GRUB com 3 comandos
layout: post
tags: [grub, linux]
categories: [linux]
---
Um dos acontecimentos mais frequentes com os usuários de dual boot é a perca do Grub. Isso geralmente acontece quando você resolve formatar seu Windows, que ao ser reinstalado apaga seu querido Grub.

Para recuperá-lo você vai precisar de um CD-Live do linux, inicialize-o, assim que carregar, entre no seu terminal e execute os passos a seguir:

**OBS: Testei apenas no ubuntu, caso sua distro seja outra, verifique a validade dos comandos a seguir.**

Verificando a partição referente ao seu GNU/LINUX

    sudo fdisk -l

Vamos montar o seu sistema de arquivos na sua partição GNU/Linux no diretório /mnt

    sudo mount -t ext4 /dev/sda6 /mnt

Neste caso o meu sistema de arquivos é EXT4 e a minha partição Linux é a sda6, troque esses campos conforme a sua configuração.

Instalação do Grub

    sudo grub-install --root-directory=/mnt /dev/sda

*<a href="http://www.vivaolinux.com.br/dica/Como-recuperar-o-GRUB-em-3-comandos-Esse-funciona/" target="_blank">Referência</a>*
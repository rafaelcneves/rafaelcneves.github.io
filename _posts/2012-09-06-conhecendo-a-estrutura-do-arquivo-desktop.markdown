---
published: true
title: Conhecendo a estrutura do arquivo .desktop
layout: post
tags: [linux]
categories: [linux]
---
No [post anterior](/linux/2012/09/05/adicionando-aplicativos-ao-linux.html "Adicionando aplicativos ao Linux") eu comentei algo sobre os arquivos .desktop no linux. Então resolvi deixar aqui uma breve explicação sobre esse tipo de arquivo.

O arquivo .desktop é semelhante ao arquivo de atalho .lnk do windows. Esse arquivo segue um padrão definido pela freedesktop.org que é utilizado tanto pelo Gnome quanto pelo KDE. Eles ficam dentro da pasta /usr/share/applications ou na pasta ~/.local/share/applications. Nesses arquivos é que estão contidas as configurações e características do atalho.

Explicando cada item:

*[Desktop Entry]*: É o cabeçalho do arquivo. Ele define o grupo ao qual o arquivo pertence.  
*Name*: Nome do atalho  
*Name[pt_BR]*: Nome do atalho em português do Brasil. Podem ser adicionadas diversas linhas como essa, para especificar a tradução para vários idiomas.  
*Comment*: Comentário do atalho.  
*Comment[pt_BR]*: Comentário em portugês do Brasil. Podem ser adicionadas linhas como essa para várias traduções diferentes.  
*GenericName*: Nome genérico da aplicação.  
*GenericName[pt_BR]*: Tradução do nome genérico.  
*Exec*: Programa a ser executado.  
*Terminal*: true para o programa ser executado em uma janela do terminal, false para não.  
*Type*: Especifica o tipo do atalho. Pode ser: Application, Link ou Directory.  
*Icon*: Icone da aplicação.  
*Categories*: Categoria da aplicação. As principais são: AudioVideo, Audio, Video, Development, Education , Game, Graphics, Network, Office, Settings, System, Utility.  
*MimeType*: MIME types suportados pela aplicação.

*[Referência](http://www2.joinville.udesc.br/~colmeia/blog/?p=68){:target="_blank"}*

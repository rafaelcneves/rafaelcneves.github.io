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

__*[Desktop Entry]*__: É o cabeçalho do arquivo. Ele define o grupo ao qual o arquivo pertence.  
__*Name*__: Nome do atalho  
__*Name[pt_BR]*__: Nome do atalho em português do Brasil. Podem ser adicionadas diversas linhas como essa, para especificar a tradução para vários idiomas.  
__*Comment*__: Comentário do atalho.  
__*Comment[pt_BR]*__: Comentário em portugês do Brasil. Podem ser adicionadas linhas como essa para várias traduções diferentes.  
__*GenericName*__: Nome genérico da aplicação.  
__*GenericName[pt_BR]*__: Tradução do nome genérico.  
__*Exec*__: Programa a ser executado.  
__*Terminal*__: true para o programa ser executado em uma janela do terminal, false para não.  
__*Type*__: Especifica o tipo do atalho. Pode ser: Application, Link ou Directory.  
__*Icon*__: Icone da aplicação.  
__*Categories*__: Categoria da aplicação. As principais são: AudioVideo, Audio, Video, Development, Education , Game, Graphics, Network, Office, Settings, System, Utility.  
__*MimeType*__: MIME types suportados pela aplicação.

*[Referência](http://www2.joinville.udesc.br/~colmeia/blog/?p=68){:target="_blank"}*

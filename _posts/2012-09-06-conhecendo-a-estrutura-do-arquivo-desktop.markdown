---
published: true
title: Conhecendo a estrutura do arquivo .desktop
layout: post
---
No <a title="Adicionando aplicativos ao Linux" href="/2012/09/05/adicionando-aplicativos-ao-linux.html">post anterior</a> eu comentei algo sobre os arquivos .desktop no linux. Então resolvi deixar aqui uma breve explicação sobre esse tipo de arquivo.

O arquivo .desktop é semelhante ao arquivo de atalho .lnk do windows. Esse arquivo segue um padrão definido pela freedesktop.org que é utilizado tanto pelo Gnome quanto pelo KDE. Eles ficam dentro da pasta /usr/share/applications ou na pasta ~/.local/share/applications. Nesses arquivos é que estão contidas as configurações e características do atalho.

Explicando cada item:

<strong>[Desktop Entry]</strong>: É o cabeçalho do arquivo. Ele define o grupo ao qual o arquivo pertence.

<strong>Name</strong>: Nome do atalho

<strong>Name[pt_BR]</strong>: Nome do atalho em português do Brasil. Podem ser adicionadas diversas linhas como essa, para especificar a tradução para vários idiomas.

<strong>Comment</strong>: Comentário do atalho.

<strong>Comment[pt_BR]</strong>: Comentário em portugês do Brasil. Podem ser adicionadas linhas como essa para várias traduções diferentes.

<strong>GenericName</strong>: Nome genérico da aplicação.

<strong>GenericName[pt_BR]</strong>: Tradução do nome genérico.

<strong>Exec</strong>: Programa a ser executado.

<strong>Terminal</strong>: true para o programa ser executado em uma janela do terminal, false para não.

<strong>Type</strong>: Especifica o tipo do atalho. Pode ser: Application, Link ou Directory.

<strong>Icon</strong>: Icone da aplicação.

<strong>Categories</strong>: Categoria da aplicação. As principais são: AudioVideo, Audio, Video, Development, Education , Game, Graphics, Network, Office, Settings, System, Utility.

<strong>MimeType</strong>: MIME types suportados pela aplicação.

<a href="http://www2.joinville.udesc.br/~colmeia/blog/?p=68" target="_blank">Referência</a>
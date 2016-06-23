---
published: true
title: Adicionando aplicativos ao Linux
description: Como adicionar aplicativos no linux/ubuntu com atalhos no menu de aplicativos
layout: post
tags: [linux, ubuntu]
categories: [linux]
comments: true
---
O objetivo deste post vai ser aquelas ocasiões onde você baixa um pacote e não tem o instalador dele. Como por exemplo o firefox, que você vai no site, baixa, descompacta e executa, ele não fica como uma aplicação que você consegue executar através de comando no terminal, ou encontrar na busca do dash do ubuntu.

Então estou criando este post. Usando como base um pouco do conhecimento de linux que adquiri com o tempo, e referência em um post, que vou deixar o link no fim da página.

Vou utilizar para exemplo o sublime text 2, ide que utilizo aqui. E fiz o mesmo no Ubuntu 12.04, mas com certeza deve funcionar em varias outras distros.

Crie o arquivo sublime.desktop na pasta /usr/share/applications, ou se preferir não utilizar sudo pode fazer o mesmo na pasta ~/.local/share/applications e edite-o com o seguinte conteúdo:

{% highlight bash %}
[Desktop Entry]
Version=1.0
Name=Sublime
Exec=sublime-text %f
Icon=Sublime
Terminal=false
Type=Application
Categories=Motif;Utility;TextTools;
GenericName=Text editor
{% endhighlight %}

Dessa forma, seu aplicativo já estará aparecendo no menu, e caso necessário você consegue defini-lo como aplicativo padrão para seus arquivos, o que já resolve o problema da maioria das pessoas.

Mas se você é daquele que tem o costume de executar aplicativos pelo terminal, você pode adicionar um link simbólico para o executável no bin:

{% highlight bash %}
cd /usr/bin/
sudo ln -s ~/downloads/Sublime\ Text\ 2/sublime_text
{% endhighlight %}

nesse meu exemplo, se eu executar sublime_text no terminal, irá abrir o sublime.

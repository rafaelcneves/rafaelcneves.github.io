---
published: true
title: Como alterar o cursor em aplicações Webkit no Linux
excerpt: Como alterar o cursor em aplicações Webkit no Linux
layout: post
tags: [chrome, cursor-theme, linux, webkit]
categories: [linux]
comments: true
---
Não sei vocês, mas eu gosto muito do tema dark de cursor do Ubuntu. Então normalmente eu altero ele nas através no Unity Tweak Tool. Porém nas aplicações baseadas no webkit, eu não sei por qual motivo, sempre mantém a configuração _default_ do sistema, então tive que correr atrás de alguma forma para ajustar isso. E acabei chegando no seguinte comando:

{% highlight shell %}
sudo update-alternatives --config x-cursor-theme
{% endhighlight %}

Após executar, basta você escolher o tema de sua preferência e pronto, talvez seja necessário reiniciar a aplicação.

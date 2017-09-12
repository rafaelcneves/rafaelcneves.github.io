---
published: true
title: Evitando problemas com datas e time zones no Rails
excerpt: Evitando problemas com datas e time zones no Rails
layout: post
tags: [timezone, rails, ruby-on-rails, ror]
categories: [rubyonrails]
comments: true
---
Hoje infelizmente já faz um tempo que não trabalho mais com *Rails*, mas até hoje eu lembro o quanto nossa equipe tinha dores de cabeça com timezones.

Buscando evitá-las corremos atrás de como corrigir, onde encontramos um post muito objetivo que trazia tudo que a gente precisava. Um simples "pode" e "não pode", e isso salvou nossa vida.

Por isso mantive o *link* desse post até hoje salvo no meus favoritos, e hoje resolvi postar essas dicas e a lista aqui.

A primeira coisa a ser feita para evitar problemas é setar a time zone do projeto no `config/application.rb` para Brasília (se o site for basileiro): config.time_zone = 'Brasilia' e não para "UTC -3" ou algo do gênero; de forma a evitar problemas com horário de verão também.

Dessa forma, o Rails permanecerá a hora certa para que seja salva no banco de dados corretamente em UTC 0, como mandam as regras. Da mesma forma, quando você puxar algo salvo no banco em UTC 0, ele já mostrará na tela a time zone do projeto utilizada corretamente.

Porém, o problema é que o Rails tem métodos que retornam a data em UTC 0 e outros, de acordo com a time zone do projeto.

A boa notícia é que você pode seguir essa *cheat sheet* sempre que for trabalhar com time zones para não ter problemas e rapidamente irá decorar quais métodos devem ou não ser usados.

## Não use

{% highlight ruby %}
Time.now # => Retorna o horário do sistema e ignora a time zone do projeto.
Time.parse("2012-03-02 16:05:37") # => Irá assumir que a string recebida tá na time zone do sistema.
Time.strptime(time_string, '%Y-%m-%dT%H:%M:%S%z') # Mesmo problema do Time.parse.
Date.today # Pode ser ontem ou amanhã de acordo com a time zona setada na máquina.
Date.today.to_time # => # Também não segue a time zone do projeto.
{% endhighlight %}

## Use

{% highlight ruby %}
2.hours.ago # => Fri, 02 Mar 2012 20:04:47 UTC -03:00
1.day.from_now # => Fri, 03 Mar 2012 22:04:47 UTC -03:00
Date.today.to_time_in_current_zone # => Fri, 02 Mar 2012 22:04:47 UTC -03:00
Date.current # => Fri, 02 Mar
Time.zone.parse("2012-03-02 16:05:37") # => Fri, 02 Mar 2012 16:05:37 UTC -03:00
Time.zone.now # => Fri, 02 Mar 2012 22:04:47 UTC -03:00
Time.current # Mesma coisa, só que de forma mais curta.
Time.zone.today # Se você não pode usar Time ou DateTime.
Time.zone.now.utc.iso8601 # Quando for trabalhar com APIs.
Time.strptime(time_string, '%Y-%m-%dT%H:%M:%S%z').in_time_zone(Time.zone) # Se não pode usar Time.pars
{% endhighlight %}

*[Referência](https://helabs.com/artigos/2013/06/11/evitando-problemas-com-datas-e-time-zones-no-rails/){:target="_blank"}*

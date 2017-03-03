---
published: true
title: Adicionando log sql no console do rails
excerpt: Como adicionar log do sql no console do rails
layout: post
tags: [log, rails, ruby, sql]
categories: [rubyonrails]
comments: true
---
Bom, já passei algumas vezes pela necessidade de ter que acrescentar um comando no console do rails para verificar tempo das consultas e coisas do gênero. Então dessa vez corri atrás de uma opção que não tivesse que colocar todas as vezes. Encontrei esta opção.

No linux, crie um arquivo no home do seu usuário, com o nome ".irbrc" com o seguinte conteúdo:

{% highlight ruby %}
if defined?(ActiveRecord)
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end
{% endhighlight %}

Então reinicie seu terminal e voilà

---
published: true
title: Utilizando JOIN no SQL
layout: post
tags: [join, sql]
categories: [sql]
---
Bom sempre tive bastante dificuldade para entender as diferenças entre os joins no sql.

Uns dias atrás eu estava no trabalho, com uma dificuldade tremenda num sql gigantesco, aí então me passaram um link com imagens falando sobre os joins, que passarei aqui.

INNER JOIN

Este é simples, o mais entendível e o mais comum. Esta consulta retornará todos os registros da tabela esquerda (tabela A) que têm correspondência com a tabela direita (tabela B). Podemos escrever este JOIN da seguinte forma:

{% highlight sql %}
SELECT *
FROM A
INNER JOIN B
ON A.Key = B.Key
{% endhighlight %}

LEFT JOIN

Esta consulta retorna todos os registros da tabela esquerda (tabela A) e as correspondências que existirem com a tabela direita (tabela B). O código ficará da seguinte forma:

{% highlight sql %}
SELECT *
FROM A
LEFT JOIN B
ON A.Key = B.Key
{% endhighlight %}

RIGHT JOIN

Esta consulta retornará todos os registros da tabela direita (tabela B) e as correspondências que existirem com a tabela esquerda (tabela A). O código ficará da seguinte forma:

{% highlight sql %}
SELECT *
FROM A
RIGHT JOIN B
ON A.Key = B.Key
{% endhighlight %}

OUTER JOIN

Este JOIN também é conhecido como FULL OUTER JOIN ou FULL JOIN. Esta consulta retornará todos os registros das duas tabelas e juntando também os registros correspondentes entres as duas tabelas. O código ficará da seguinte forma:

{% highlight sql %}
SELECT *
FROM A
FULL OUTER JOIN B B
ON A.Key = B.Key
{% endhighlight %}

*<a href="http://sqlfromhell.wordpress.com/2009/09/15/trabalhando-com-join/" target="_blank">Post original</a>*
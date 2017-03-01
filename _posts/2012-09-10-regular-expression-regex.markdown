---
published: true
title: Regular Expression (RegEx)
description: Documentação simplificada para Expressões Regulares/Regular Expression/RegEx
layout: post
tags: [javascript, regex]
categories: [javascript]
comments: true
---
Desta vez estou deixando aqui um assunto que as vezes sinto muita falta: as queridas expressões regulares. Muito utilizadas para validação de dados na web. Irei mostrar aqui como utilizar no Javascript.

Expressões regulares são padrões utilizados para encontrar combinações de caracteres em Strings. É uma ferramenta muito poderosa porque consegue resumir em algumas linhas de código pesquisas altamente complexas. O principal uso de expressões regulares em Javascript é a validação de dados.

Em JavaScript, expressões regulares também podem ser tratadas como um objeto. Esses padrões são usados com os métodos exec e test do objeto RegExp, e com os métodos match, replace, search, e split do objeto String.

As expressões regulares podem ser criadas de duas formas:

{% highlight javascript %}
var seek = /padrao/;
{% endhighlight %}

{% highlight javascript %}
var seek = new RegExp("padrao");
{% endhighlight %}

Regular Expression é um padrão de texto que consiste de simples caracteres (da letra a até z, ou de 1 até 9) e de uma combinação de caracteres simples e especiais.

Os padrões para a pesquisa de caracteres estão divididos em categorias. Segue abaixo uma lista dos grupos e respectivos caracteres especiais.

## Busca posicionada

### ^

Busca somente no início da string.

`/^The/` encontra "The" em "The night" mas não em "In The Night".

### $

Busca somente no fim da string.

`/and$/` encontra "and" em "Land" mas não em "landing".

### \b

Encontra em qualquer parte da string.

`/ly\b/` encontra "ly" em "This is really cool."

### \B

Encontra qualquer parte que não esteja limitada.

`/\Bor/` encontra `"or"` em "normal" mas não em "origami".

## Literais

### Alfanumérica

Todos os caracteres alfabéticos e numerais se encontram literalmente.

Então `/2 dias/` encontrarão "2 dias" dentro da string.

### \n

Encontra o caractere de nova linha.

### \f

Encontra o caractere de nova página.

### \r

Encontra o caractere de retorno de carro.

### \t

Encontra o caractere de tabulação horizontal.

### \v

Encontra o caractere de tabulação vertical.

### \xxx

Encontra o caractere ASCII expresso por um número octal xxx.

`\50` encontra o caractere parênteses esquerdo "(".

### \xdd

Encontra o caractere ASCII expresso por um número hexadecimal dd.

`\x28` encontra o caractere parênteses esquerdo "(".

### \uxxxx

Encontra o caractere ASCII expresso por UNICODE xxxx.

`\u00A3` encontra "£".


A barra invertida `\` é também usada quando você deseja encontrar um caractere especial literalmente. Por Exemplo, se você deseja encontrar o símbolo "$" ao invés de ter um sinal no final da string, use a barra invertida: `/\$/`.

## Classes de Caracteres

### [xyz]

Encontra qualquer caractere que estiver dentro do grupo. Você pode usar hífen para denotar escala.

Por Exemplo. `/[a-z]/` encontra qualquer letra do alfabeto alphabet, `/[0-9]/` encontra qualquer dígito.

`/[AN]BC/` encontra "ABC" e "NBC" mas nao “BBC" desde que a letra “B” não está no grupo.

### [^xyz]

Encontra qualquer caractere que não estiver dentro do grupo. O circunflexo indica que nenhuma caractere deve estar na string.

NOTA: O circunflexo usado dentro da classe de caractere é diferente do que denota o início da string, não se confundam. A negação aqui só é permitida dentro dos sinais.

`/[^AN]BC/` encontra "BBC" mas nao "ABC" ou "NBC".

### .

Encontra qualquer caractere exceto o caractere de nova linha ou terminador de linha Unicode.

`/b.t/` encontra "bat", "bit", "bet" e assim por diante.

### \w

Enconta qualquer caractere alfanumérico incluindo underscore. Equivalente a `[a-zA-Z0-9_]`.

`/\w/` encontra "200" em "200%".

### \W

Encontra qualquer caractere que não se encontra na classe dos alfanuméricos. Equivalente a `[^a-zA-Z0-9_]`.

`/\W/` encontra "%" em "200%".

### \d

Encontra qualquer dígito. Equivalente a `[0-9]`.

### \D

Encontra qualquer caractere que não seja um digito. Equivalente a `[^0-9]`.

`/\D/` encontra "No" in "No 342222".

### \s

Encontra qualquer caractere que equivale a um espaço. Equivalente a `[ \t\r\n\v\f]`.

### \S

Encontra qualquer caractere que não equivale a um espaço. Equivalente a `[^ \t\r\n\v\f]`.

## Repetição

### {x}

Encontra exatamente x ocorrências na regular expression.

`/\d{5}/` encontra 5 digitos.

### {x,}

Encontra x ou mais ocorrências na regular expression.

`/\s{2,}/` encontra no minimo 2 caracteres de espaço em branco.

### {x,y}

Encontra x para y numero de ocorrências na regular expression.

`/\d{2,4}/` encontra no minimo 2 mas nao mais que 4 digitos

### ?

Encontra zero ou nenhuma ocorrência. Equivalente a `{0,1}`.

`/a\s?b/` encontra "ab" ou "a b".

### *

Encontra zero ou mais ocorrências. Equivalente a `{0,}`.

`/we*/` encontra "w" em "why" e "wee" em "between", mas não em "bad".

### +

Encontra uma ou mais ocorrências. Equivalente a `{1,}`.

`/fe+d/` encontra tanto em "fed" quanto em "feed".

## Alternação &amp; Agrupamento

### ( )

Agrupamento de caracteres para criar uma cláusula de condição. Pode estar aninhado.

`/(abc)+(def)/` encontra um ou mais ocorrencias de "abc" seguido por uma ocorrencia de "def".

### |

Combina cláusulas de condições dentro de uma regular expression e então encontra qualquer uma das cláusulas. Similar à expressão "OR".

`/(ab)|(cd)|(ef)/` encontra "ab" ou "cd" ou "ef".

## Backreferences

### ( )\n

Encontra uma cláusula entre parênteses. n é o número de cláusulas para a esquerda da backreference.

`(\w+)\s+\1` encontra quaisquer palavras que ocorra duas vezes na mesma linha, como "hubba hubba." O `\1` denota que a primeria palavra depois do espaço deve encontrar a porção da string que foi encontrada no último commando dentro de parênteses. Se existisse mais de um comando dentro de parênteses, você deve usar `\2` ou `\3` para encontrar o apropriado agrupamento da esquerda da backreference. Até 9 backreferences podem ser usadas no padrão da string.

## Modificadores de Padrões

Em adição aos caracteres padrões para buscar, você pode usar switches para fazer uma pesquisa global, case- insensitive (ignora minúsculas e maiúsculas) ou ambas.

### i

Ignora se é minúscula ou maiúscula.

`/The/i` encontra "the" e "The" e "tHe".

### g

Pesquisa Global para todas as ocorrências do padrão.

`/ain/g` encontra os dois "ain" em "No pain no gain", ao invés de apenas o primeiro.

### gi

Pesquisa Global, e ignorar _case_.

`/it/gi` encontra todos "it" em "It is our IT department".

### lastIndex

Armazena a posição da última pesquisa bem sucessida realizada na string. Se nada for encontrado, a propriedade lastIndex será colocada como –1.

### $n

`n` representa o numero de 1 a 9.

Armazena os nove mais recentes pesquisa dentro de parênteses encontradas. Por exemplo, se o padrão usado por uma regular expression para a última pesquisa foi `/(Hello)(\s+)(world)/` e a string pesquisada foi “Hello world” o conteúdo de RegExp.$2 poderia ser qualquer caractere entro “Hello” e “world”.

### source

Armazena a copia do padrão da regular expression.

## Métodos usados pelas expressões regulares

### exec

Um método RegExp que executa pesquisas em uma string. O mesmo retorna um array das informações obtidas.

### test

Um método RegExp que testa uma pesquisa em uma string. O mesmo retorna true ou false.

### match

Um método de String que executa uma pesquisa em uma string. O mesmo retorna um array das informações obtidas ou nulo se nada for encontrado.

### search

Um método de String que testa uma pesquisa em uma string. O mesmo retorna o índice do resultado, ou -1 se a pesquisa falhar.

### replace

Um método de String que executa uma pesquisa em uma string, e substitui o resultado encontrado por uma substring.

### split

Um método de String que usa uma regular expression ou uma string para quebrar uma string em uma array de substrings.

Quando quiser saber se o padrão foi encontrado na string, pode usar o método test ou search. Os métodos exec e match trazem mais informações, porém são mais lentos. Ao usar exec ou match e obter sucesso, será retornado um array e atualizará as propriedades do objeto regular expression associado e também de objetos pré-definidos. Se a pesquisa falir, o método retornará nulo.

*[Referência](http://imasters.com.br/artigo/2515/javascript/regular_expression/){:target="_blank"}*

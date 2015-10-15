---
published: true
title: Regular Expression (RegEx)
layout: post
tags: [javascript, regex]
categories: [javascript]
---
Desta vez estou deixando aqui um assunto que as vezes sinto muita falta: as queridas expressões regulares. Muito utilizadas para validação de dados na web. Irei mostrar aqui como utilizar no Javascript.

Expressões regulares são padrões utilizados para encontrar combinações de caracteres em Strings. É uma ferramenta muito poderosa porque consegue resumir em algumas linhas de código pesquisas altamente complexas. O principal uso de expressões regulares em Javascript é a validação de dados.

Em JavaScript, expressões regulares também podem ser tratadas como um objeto. Esses padrões são usados com os métodos exec e test do objeto RegExp, e com os métodos match, replace, search, e split do objeto String.

**Entendendo as Expressões Regulares**

As expressões regulares podem ser criadas de duas formas:

*   Escrevendo uma expressão regular:
	    <span style="color:#0066cc;">seek = /padrao/</span>
*   Criando uma instancia do objeto RegExp:
		<span style="color:#0066cc;">seek = new RegExp("padrao");</span>

Regular Expression é um padrão de texto que consiste de simples caracteres (da letra a até z, ou de 1 até 9) e de uma combinação de caracteres simples e especiais.

Os padrões para a pesquisa de caracteres estão divididos em categorias. Segue abaixo uma lista dos grupos e respectivos caracteres especiais.

**Busca posicionada**

<table>
	<tr>
		<td>Símbolo</td>
		<td>Descrição</td>
		<td>Exemplo</td>
	</tr>
	<tr>
		<td><span style="color:#0033cc;">^</span></td>
		<td>Busca somente no início da string</td>
		<td>/^The/ encontra "The" em "The night" mas não em "In The Night"</td>
	</tr>
	<tr>
		<td><span style="color:#0033cc;">$</span></td>
		<td>Busca somente no fim da string</td>
		<td>/and$/ encontra "and" em "Land" mas não em "landing"</td>
	</tr>
	<tr>
		<td><span style="color:#0033cc;">\b</span></td>
		<td>Encontra em qualquer parte da string</td>
		<td>/ly\b/ encontra "ly" em "This is really cool."</td>
	</tr>
	<tr>
		<td><span style="color:#0033cc;">\B</span></td>
		<td>Encontra qualquer parte que não esteja limitada</td>
		<td>/\Bor/ encontra "or" em "normal" mas não em "origami."</td>
	</tr>
</table>

**Literais**

<table>
	<tr>
		<td>Símbolo</td>
		<td>Descrição</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">Alfanumerica</span></td>
		<td>Todos os caracteres alfabéticos e numerais se encontram literalmente. Então /2 dias/ encontrarão "2 dias" dentro da string</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\n</span></td>
		<td>Encontra o caractere de nova linha</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\f</span></td>
		<td>Encontra o caractere de nova página</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\r</span></td>
		<td>Encontra o caractere de retorno de carro</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\t</span></td>
		<td>Encontra o caractere de tabulação horizontal</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\v</span></td>
		<td>Encontra o caractere de tabulação vertical</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\xxx</span></td>
		<td>
			Encontra o caractere ASCII expresso por um número octal xxx.
			"\50" encontra o caractere parênteses esquerdo "("
		</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\xdd</span></td>
		<td>
			Encontra o caractere ASCII expresso por um número hexadecimal dd.
			"\x28" encontra o caractere parênteses esquerdo "("
		</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\uxxxx</span></td>
		<td>
			Encontra o caractere ASCII expresso por UNICODE xxxx.
			"\u00A3" encontra "£".
		</td>
	</tr>
</table>

A barra invertida (\\) é também usada quando você deseja encontrar um caractere especial literalmente. Por Exemplo, se você deseja encontrar o símbolo "$" ao invés de ter um sinal no final da string, use a barra invertida: /\\$/

**Classes de Caracteres**

<table>
	<tr>
		<td>Símbolo</td>
		<td>Descrição</td>
		<td>Exemplo</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">[xyz]</span></td>
		<td>
			Encontra qualquer caractere que estiver dentro do grupo. Você pode usar hífen para denotar escala. Por Exemplo. /[a-z]/ encontra qualquer letra do alfabeto alphabet, /[0-9]/ encontra qualquer dígito
		</td>
		<td>/[AN]BC/ encontra "ABC" e "NBC" mas nao “BBC" desde que a letra “B” nao estao nogrupo.</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">[^xyz]</span></td>
		<td>
			Encontra qualquer caractere que não estiver dentro do grupo. O circunflexo indica que nenhuma caractere deve estar na string.
			NOTA: O circunflexo usado dentro da classe de caractere é diferente do que denota o início da string, não se confundam. A negação aqui só é permitida dentro dos sinais
		</td>
		<td>/[^AN]BC/ encontra "BBC" mas nao "ABC" ou "NBC".</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">.</span></td>
		<td>(Ponto). Encontra qualquer caractere exceto o caractere de nova linha ou terminador de linha Unicode</td>
		<td>/b.t/ encontra "bat", "bit", "bet" e assim por diante</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\w</span></td>
		<td>Enconta qualquer caractere alfanumérico incluindo underscore. Equivalente a [a-zA-Z0-9_]</td>
		<td>/\w/ encontra "200" em "200%"</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\W</span></td>
		<td>Encontra qualquer caractere que não se encontra na classe dos alfanuméricos. Equivalente a [^a-zA-Z0-9_]</td>
		<td>/\W/ encontra "%" em "200%"</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\d</span></td>
		<td>Encontra qualquer dígito. Equivalente a [0-9]</td>
		<td></td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\D</span></td>
		<td>Encontra qualquer caractere que não seja um digito. Equivalente a [^0-9]</td>
		<td>/\D/ matches "No" in "No 342222"</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\s</span></td>
		<td>Encontra qualquer caractere que equivale a um espaço. Equivalente a [ \t\r\n\v\f]</td>
		<td></td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">\S</span></td>
		<td>Encontra qualquer caractere que não equivale a um espaço. Equivalente a [^ \t\r\n\v\f]</td>
		<td></td>
	</tr>
</table>

**Repetição**

<table>
	<tr>
		<td>Símbolo</td>
		<td>Descrição</td>
		<td>Exemplo</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">{x}</span></td>
		<td>Encontra exatamente x ocorrências na regular expression</td>
		<td>/\d{5}/ encontra 5 digitos</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">{x,}</span></td>
		<td>Encontra x ou mais ocorrências na regular expression</td>
		<td>/\s{2,}/ encontra no minimo 2 caracteres de espaço em branco</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">{x,y}</span></td>
		<td>Encontra x para y numero de ocorrências na regular expression</td>
		<td>/\d{2,4}/ encontra no minimo 2 mas nao mais que 4 digitos</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">?</span></td>
		<td>Encontra zero ou nenhuma ocorrência. Equivalente a {0,1}</td>
		<td>/a\s?b/ encontra "ab" ou "a b".</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">*</span></td>
		<td>Encontra zero ou mais ocorrências. Equivalente a {0,}</td>
		<td>/we*/ encontra "w" em "why" e "wee" em "between", mas nao em "bad"</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">+</span></td>
		<td>Encontra uma ou mais ocorrências. Equivalente a {1,}</td>
		<td>/fe+d/ encontra tanto em "fed" quanto em "feed"</td>
	</tr>
</table>

**Alternação &amp; Agrupamento**

<table>
	<tr>
		<td>Símbolo</td>
		<td>Descrição</td>
		<td>Exemplo</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">( )</span></td>
		<td>Agrupamento de caracteres para criar uma cláusula de condição. Pode estar aninhado</td>
		<td>/(abc)+(def)/ encontra um ou mais ocorrencias de "abc" seguido por uma ocorrencia de "def"</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">|</span></td>
		<td>Combina cláusulas de condições dentro de uma regular expression e então encontra qualquer uma das cláusulas. Similar à expressão "OR"</td>
		<td>/(ab)|(cd)|(ef)/ encontra "ab" ou "cd" ou "ef".</td>
	</tr>
</table>

**Backreferences**

<table>
	<tr>
		<td>Símbolo</td>
		<td>Descrição</td>
		<td>Exemplo</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">( )\n</span></td>
		<td>Encontra uma cláusula entre parênteses. n é o número de cláusulas para a esquerda da backreference</td>
		<td>
			(\w+)\s+\1 encontra quaisquer palavras que ocorra duas vezes na mesma linha, como "hubba hubba." O \1 denota que a primeria palavra depois do espaço deve encontrar a porção da string que foi encontrada no último commando dentro de parênteses. Se existisse mais de um comando dentro de parênteses, você deve usar \2 ou \3 para encontrar o apropriado agrupamento da esquerda da backreference. Até 9 backreferences podem ser usadas no padrão da string
		</td>
	</tr>
</table>

**Modificadores de Padrões**

Em adição aos caracteres padrões para buscar, você pode usar switches para fazer uma pesquisa global, case- insensitive (ignora minúsculas e maiúsculas) ou ambas.

<table>
	<tr>
		<td>Propriedade</td>
		<td>Descrição</td>
		<td>Exemplo</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">i</span></td>
		<td>Ignora se é minúscula ou maiúscula</td>
		<td>/The/i encontra "the" e "The" e "tHe"</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">g</span></td>
		<td>Pesquisa Global para todas as ocorrências do padrão</td>
		<td>/ain/g encontra os dois "ain" em "No pain no gain", ao inves de apenas o primeiro</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">gi</span></td>
		<td>Pesquisa Global, e ignorar caso</td>
		<td>
			/it/gi encontra todos "it" em "It is our IT department"
			lastIndex
		</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">lastIndex</span></td>
		<td>Armazena a posição da última pesquisa bem sucessida realizada na string. Se nada for encontrado, a propriedade lastIndex será colocada como –1</td>
		<td></td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">$n</span></td>
		<td>
			n representa o numero de 1 a 9
			Armazena os nove mais recentes pesquisa dentro de parênteses encontradas. Por exemplo, se o padrão usado por uma regular expression para a última pesquisa foi /(Hello)(\s+)(world)/ e a string pesquisada foi “Hello world” o conteúdo de RegExp.$2 poderia ser qualquer caractere entro “Hello” e “world”
		</td>
		<td></td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">source</span></td>
		<td>Armazena a copia do padrão da regular expression</td>
		<td></td>
	</tr>
</table>

**Métodos usados pelas expressões regulares**

<table>
	<tr>
		<td>Método</td>
		<td>Descrição</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">exec</span></td>
		<td>Um método RegExp que executa pesquisas em uma string. O mesmo retorna um array das informações obtidas</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">test</span></td>
		<td>Um método RegExp que testa uma pesquisa em uma string. O mesmo retorna true ou false</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">match</span></td>
		<td>Um método de String que executa uma pesquisa em uma string. O mesmo retorna um array das informações obtidas ou nulo se nada for encontrado</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">search</span></td>
		<td>Um método de String que testa uma pesquisa em uma string. O mesmo retorna o índice do resultado, ou -1 se a pesquisa falir</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">replace</span></td>
		<td>Um método de String que executa uma pesquisa em uma string, e substitui o resultado encontrado por uma substring</td>
	</tr>
	<tr>
		<td><span style="color:#0066cc;">split</span></td>
		<td>Um método de String que usa uma regular expression ou uma string para quebrar uma string em uma array de substrings</td>
	</tr>
</table>

Quando quiser saber se o padrão foi encontrado na string, pode usar o método test ou search. Os métodos exec e match trazem mais informações, porém são mais lentos. Ao usar exec ou match e obter sucesso, será retornado um array e atualizará as propriedades do objeto regular expression associado e também de objetos pré-definidos. Se a pesquisa falir, o método retornará nulo.

*[Referência](http://imasters.com.br/artigo/2515/javascript/regular_expression/){:target="_blank"}*

---
published: true
title: Programando Expressões Regulares
layout: post
tags: [javascript, regex]
categories: [javascript]
---
A partir do momento que sabemos quais caracteres desejamos, devemos partir para a criação do padrão que sera utilizado para pesquisar a String.

Vamos, a partir de agora, criar alguns exemplos práticos de como utilizar Expressões Regulares.

No nosso primeiro exemplo vamos pesquisar na string um padrão que é composto da palavra "de". O resultado obtido nos mostrará onde se encontra a primeira e a ultima ocorrência das pesquisas.

<strong>Exemplo 01</strong>

[sourcecode language="javascript" toolbar="false"]
padrao = /de/g;
texto = "Brasil ganha a medalha de ouro no volei de praia.";
document.write("<b>padrao » </b>" + padrao + "<br>");
document.write("<b>Texto utilizado » </b>" + texto + "<br>");
document.write("O padrao utilizado foi encontrado no <b>" + texto.search(padrao) + "º </b>caractere.<br>");
padrao.exec(texto);
document.write("O ultimo valor encontrado e o caractere<b> " + padrao.lastIndex + "º </b>.");
[/sourcecode]

<span style="color:#ff6600;">Linha 1</span> – Declaração da variável padrão com a sequência de caracteres a serem utilizados nas pesquisas.

<span style="color:#ff6600;">Linha 5</span> – Utilização do método search() para encontrar o padrao na variável texto.

<span style="color:#ff6600;">Linha 6</span> – Utilização do método exec para pesquisar a seqüência padrão na variável texto.

<span style="color:#ff6600;">Linha 7</span> – Utilização da propriedade lastIndex para retornar a última vez que a seqüência de caracteres foi encontrada na variável texto.

<strong>Exemplo 02</strong>

Este exemplo é um pouco mais complexo. Ele valida a entrada de dados por parte do usuário. O usuário vai digitar um número de telefone como proposto no exemplo.

[sourcecode language="javascript" toolbar="false"]
padrao = /\(?\d{3}\)?\d{3}-\d{4}/;
function testInfo(x) {
  a = x.Phone.value;
  OK = padrao.exec(a);
  if(!OK){
    window.alert("Este numero de telefone esta incorreto!");
    x.Phone.focus();
  } else {
    window.alert("Obrigado, seu numero de telefone e » " + OK[0]);
  }
}
[/sourcecode]

<span style="color:#ff6600;">Linha 1</span> – Declaração da variável padrao com a seqüência de caracteres a serem utilizados nas pesquisas.

<span style="color:#ff6600;">Linha 2</span> – Declaração da função testInfo() que recebe um parâmetro com o objeto form a ser utilizado

<span style="color:#ff6600;">Linha 3</span> – Declaração da variável a que armazena o valor do parâmentro x (o formulário) seguido do nome do campo e respectivo valor

<span style="color:#ff6600;">Linha 4</span> – Declaração da variável OK que recebe o valor da verificação se o padrão re está contido na variável a

<span style="color:#ff6600;">Linha 5 a 10</span> – Verificação da negação da variável OK. Se retornar true, uma caixa de mensagem será mostrada com uma mensagem de erro e o campo em questão receberá o foco. Se retornar false uma caixa de mensagem será mostrada com uma mensagem e o número do telefone.

Com todo o código Javascript criado, vamos à criação do código HTML.

[sourcecode language="html" toolbar="false"]
Digite um número de telefone, como por exemplo » (201)465-7899.
<form onsubmit="return false;">
  <input type="text" name="Phone" onchange="testInfo(this.form);">
  <input type="button" value="valida" onclick="testInfo(this.form);">
</form>
[/sourcecode]

<span style="color:#ff6600;">Linha 2</span> – O evento onSubmit retorna false para o formulário não seja enviado.

<span style="color:#ff6600;">Linha 3</span> – O evento onChange da caixa de texto chama a função testInfo() e envia como parâmetro o objeto form.

<span style="color:#ff6600;">Linha 4</span> – O evento onClick do botão chama a função testInfo() e envia como parâmetro o objeto form.

<strong>Exemplo 03</strong>

Neste exemplo vamos trabalhar com mais métodos e entender onde podemos chegar com apenas algumas linhas de código. Aqui nós dividimos uma string, colocamos seu resultado em uma matriz e ainda ordenamos a mesma.

[sourcecode language="javascript" toolbar="false"]
nomes = new String ("Thiago Prado; Bill Gates; Steve Jobs; Michael Dell; Chris Hand");
document.write("<b>String Original</b><br><br>");
document.write(nomes + "<br><br>");
padrao = /\s*;\s*/;
listaNomes = nomes.split (padrao);

padrao = /(\w+)\s+(\w+)/;
novalistaNomes = new Array;
document.write("<b>Apos ter sido dividido pela Expressao Regular</b><br><br>");
for( i = 0; i < listaNomes.length; i++) {
  document.write(listaNomes[i] + "<br>");
  novalistaNomes[i] = listaNomes[i].replace (padrao, "$2, $1");
}
document.write("<br><b>Nomes revertidos</b><br><br>");
for( i = 0; i < novalistaNomes.length; i++) {
  document.write(novalistaNomes[i] + "<br>");
}
novalistaNomes.sort();
document.write("<br> <b>Ordenados</b><br><br>");
for( i = 0; i < novalistaNomes.length; i++) {
  document.write(novalistaNomes[i] + "<br>");
}
[/sourcecode]

<span style="color:#ff6600;">Linha 1</span> – Declaração da variável nomes com alguns nomes a serem utilizados no código

<span style="color:#ff6600;">Linha 2 e 3</span> – Mostra na tela a variável nomes sem nenhuma alteração

<span style="color:#ff6600;">Linha 4</span> – Declaração da variável padrao com a seqüência de caracteres a serem utilizados nas pesquisas.

<span style="color:#ff6600;">Linha 5</span> – Criação da matriz listaNomes com a divisão da string nomes a partir do padrão utilizado.

<span style="color:#ff6600;">Linha 7</span> – A variável padrão recebe nova seqüência de caracteres a serem utilizados nas pesquisas.

<span style="color:#ff6600;">Linha 9 a 13</span> – Mostra na tela a lista de Nomes depois da divisão

<span style="color:#ff6600;">Linha 12</span> – A matriz novalistaNomes recebe o valor da matriz listaNomes que utiliza o método replace para trocar o primeiro nome pelo segundo. Isso é possível por causa do uso da expressão regular.

<span style="color:#ff6600;">Linha 14 a 17</span> – Mostra na tela a lista de Nomes revertidos

<span style="color:#ff6600;">Linha 18</span> – Utilização do método sort para ordernar a matriz novalistaNomes

<span style="color:#ff6600;">Linha 19 a 22</span> – Mostra na tela a lista de Nomes Ordenados

Regular Expression é um assunto muito amplo, e não é possível abordá-lo em apenas alguns exemplos. Então deixo aqui apenas uma ideia de como utilizar, o resto deixo por sua conta.
<div style="border:1px solid #86C0FF;background-color:#b6d9ff;padding:20px 20px 20px 80px;background-image:url('http://rnevesblog.files.wordpress.com/2012/08/url.png');border-radius:3px;background-repeat:no-repeat;background-position:10px center;margin-top:5px;"><a href="http://imasters.com.br/artigo/2515/javascript/regular_expression/" target="_blank">Referência</a></div>
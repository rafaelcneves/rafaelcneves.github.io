---
published: true
title: Instalando ruby on rails
layout: post
tags: [linux, rails, ruby, rvm]
categories: [rubyonrails]
comments: true
---
Uma pergunta que sempre me fazem, principalmente na faculdade, é "como instalo ruby on rails na minha máquina?". Então resolvi fazer um post sobre isso.

Vou mostrar como fazer isso no linux. Usuários de windows, podem utilizar do link no final da página, apesar de eu não recomendar o uso no windows.

Primeiro passo, instalar o rvm, uma ferramenta que facilita muito o uso de versões paralelas de ruby, e o upgrade de versão no projeto.
Utilizamos o seguinte comamdo para instalar:

{% highlight shell %}
\curl -L https://get.rvm.io | bash -s stable --ruby
{% endhighlight %}

Tente executar para ver se funcionou:

{% highlight shell %}
rvm --version
{% endhighlight %}

Em caso de erro, em determinados ambientes é necessário alterar alguma configuração para o funcionamento correto, nesse caso você pode acessar este link para solucionar [Post install configuration](https://rvm.io/rvm/basics#post-install-configuration){:target="_blank"}.

Agora com o rvm ok, rode o seguinte comando para instalar o ruby, neste caso a versão 2.4.2, versão atual na data deste post:

{% highlight shell %}
rvm install 2.4.2

ruby --version # Este serve apenas para verificar se instalou corretamente
{% endhighlight %}

Após isso, você já pode utilizar o ruby, mas nosso objetivo é o rails, então vamos instalar ele:

{% highlight shell %}
gem install rails
{% endhighlight %}

Este comando já instalará a ultima versão, 5.1.4, versão atual na data deste post.

Nesse momento já devemos ser capazes de criar uma aplicação rails com o seguinte comando:

{% highlight shell %}
rails new <nome_do_projeto>
{% endhighlight %}

Estamos falando de uma aplicação web, logo precisamos de um servidor http, o rails já vem com um e você pode utilizá-lo da seguinte forma:

{% highlight shell %}
rails s
{% endhighlight %}

Porém, se você prefere algo um pouco mais parrudo, ou já está pensando em como colocar essa aplicação num apache ou nginx da vida eu recomendo a seguinte gem:

{% highlight shell %}
gem install passenger
{% endhighlight %}

Ao executar um simples `passenger start` você já deve conseguir uma aplicação local rodando adequadamente, e isso é muito legal para ambientes de desenvolvimento.

Porém se você deseja configurar seu próprio servidor, recomendo você dar uma olhada nesse link [Configuration and optimization](https://www.phusionpassenger.com/library/config/)

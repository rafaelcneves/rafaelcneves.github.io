---
published: true
title: Instalando sun jdk 6 no ubuntu
excerpt: Como instalar sun jdk 6 no ubuntu/linux
layout: post
tags: [java, linux, ubuntu]
categories: [java]
comments: true
---
Como primeiro post deste blog, vou passar algo que sempre dá problema quando estou re-instalando minha máquina linux, instalar o java sdk e o plugin para o browser.

Primeiramente faça o download do sun jdk 6 neste [link](http://www.oracle.com/technetwork/java/javase/downloads/jdk-6u32-downloads-1594644.html){:target="_blank"}.

Após dê permissão de execução ao mesmo:

{% highlight bash %}
chmod +x jdk-6u32-linux-x64.bin
{% endhighlight %}

Execute o binário:

{% highlight bash %}
./jdk-6u32-linux-x64.bin
{% endhighlight %}

Mova a pasta gerada para a seguinte pasta:

{% highlight bash %}
sudo mv jdk1.6.0_32 /usr/lib/jvm/
{% endhighlight %}

Instalando o novo source do java no sistema:

{% highlight bash %}
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.6.0_32/bin/javac 1
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.6.0_32/bin/java 1
sudo update-alternatives --install /usr/bin/javaws javaws /usr/lib/jvm/jdk1.6.0_32/bin/javaws 1
{% endhighlight %}

Atribuindo o java default:

{% highlight bash %}
sudo update-alternatives --config javac
sudo update-alternatives --config java
sudo update-alternatives --config javaws
{% endhighlight %}

Versão do java (teste):

{% highlight bash %}
java -version
{% endhighlight %}

Verifique se os links do sistema apontam para o local correto:

{% highlight bash %}
ls -la /etc/alternatives/java*
{% endhighlight %}

Instalando o plugin do java no Mozilla Firefox (possivelmente para o Chrome):

64-Bit jdk

{% highlight bash %}
sudo ln -s /usr/lib/jvm/jdk1.6.0_32/jre/lib/amd64/libnpjp2.so /usr/lib/mozilla/plugins
{% endhighlight %}

32-Bit jdk

{% highlight bash %}
sudo ln -s /usr/lib/jvm/jdk1.6.0_32/jre/lib/i386/libnpjp2.so /usr/lib/mozilla/plugins
{% endhighlight %}

Utilizei para este post um outro blog que também mostra como instalar a versão 7 do java.

*[Referência](http://www.devsniper.com/ubuntu-12-04-install-sun-jdk-6-7/){:target="_blank"}*

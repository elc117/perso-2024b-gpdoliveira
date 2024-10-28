Jogo da Forca em Haskell

  A ideia inicial, proposta enviada para a professora, era criar um jogo simples em Haskell utilizando a biblioteca Gloss para desenhar animações na tela. Porém, houveram problemas na hora de compilar os arquivos e mostrar as animações. De úlitma hora, foi preciso trocar a proposta inicial pela atual. Agora, a ideia foi de criar o famoso Jogo da Forca no terminal de Haskell.
  O jogo foi feito para duas pessoas e consiste em um dos players adivinhar a palavra que o outro digitou em 6 tentativas ou menos. A parte desafiadora foi trocar funções conhecidas da programação imperativa, como loops, para seus equivalentes em Haskell, que não existem mas foi preciso criar, já que o propósito da linguagem é outro.

Como funciona?

  Os  jogadores digitam seus nomes e o jogo inicia. Primero, o jogador 1 digita a palavra que deve ser adivinhada. Em seguida, o jogador 2 possui seis tentativas de adivinhar a palava letra por letra até completá-la. A cada erro o boneco na forca perde uma parte do corpo, até que não sobre nada ou a palavra seja acertada. O jogador 2 vence se acertar a palavra, enquanto o jogador 1 vence se o outro não conseguir adivinhar a palavra.

O código

  O código conta com funções simples, a fim de printar coisas no terminal ou receber entradas do usuário, e algumas funções mais complexas, que constituem a lógica do jogo. 

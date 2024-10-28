Gustavo Pott de Oliveira
Sistemas de Informação

Tema e objetivo

  A ideia inicial, proposta enviada para a professora, era criar um jogo simples em Haskell utilizando a biblioteca Gloss para desenhar animações na tela. Porém, houveram problemas na hora de compilar os arquivos e mostrar as animações. Consegui instalar o Haskell e a biblioteca Gloss localmente, porém, não era possível abrir a tela de animações, apenas executar prints no terminal. De úlitma hora, foi preciso trocar a proposta inicial pela atual. Agora, a ideia foi de criar o famoso Jogo da Forca no terminal de Haskell. O jogo foi feito para duas pessoas e consiste em um dos players adivinhar a palavra que o outro digitou em 6 tentativas ou menos. A parte desafiadora foi trocar funções conhecidas da programação imperativa, como loops, para algo semelhante em Haskell que cumpria o mesmo propósito, uma vez que o objetivo da linguagem é outro. Mas como funciona? Os jogadores digitam seus nomes e o jogo inicia. Primero, o jogador 1 digita a palavra que deve ser adivinhada. Em seguida, o jogador 2 possui seis tentativas de adivinhar a palava letra por letra até completá-la. A cada erro o boneco na forca perde uma parte do corpo, até que não sobre nada ou a palavra seja acertada. O jogador 2 vence se acertar a palavra, enquanto o jogador 1 vence se o outro não conseguir adivinhar a palavra.

Processo de desenvolvimento

  O código conta com funções simples, a fim de printar coisas no terminal ou receber entradas do usuário, e algumas funções mais complexas, que constituem a lógica do jogo. Utilizei fontes como blogs, incluso este aqui:https://dev.to/clerijr/um-rapido-hello-world-com-haskell-h39, para entender como rodar o Haskell no Codespaces do Github e quais seriam os comandos necessários. Para o desenvolvimento do Jogo da Forca, utilizei o que lembrava da brincadeira e adaptei da forma que achei necessário. O código possui funções básicas, para printar na tela e receber inputs, e funções mais complexas, como a função Jogo, que simula um loop passando os parâmetros da palavra oculta e da palavra que está sendo exibida. Existe uma função palavra, que utiliza de uma função lambda para verificar se a letra digitada está presente na palavra e também uma função de desenho, que simula um switch () case do C, para desenhar o boneco da forca a cada chute.

Resultado final

  O resultado final foi um código executável que possibilita a dois jogadores competirem em rodadas de jogo da forca, inserindo palavras conforme a dificuldade que preferirem e tentando acertá-las.
  https://github.com/user-attachments/assets/d938b263-1e37-44ef-99b0-abfeea7c2f6a
  
Como rodar

  Para rodar, é necessário utilizar o terminal. No terminal, digite o comando ghci. Após, utilize o comando :l main.hs. Isso caregará o arquivo para execução. Depois é só digitar o nome do arquivo, main, que o código será executado.

Créditos

  Sem os blogs sobre programação em Haskell e o tira-dúvidas com o Copilot este trabalho não seria possível. Apesar de não ter conseguido utilizar Gloss, aprendi muito durante as várias tentativas e, em outro momento, pretendo enfrentar esse desafio novamente e fazer um jogo com Haskell e Gloss.





#language: pt 

Funcionalidade: Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página de compras do produto escolhido 

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando selecionar cor "azul"
E tamanho "m" 
E quantidade desejada "1"
Então deve habilitar o botão "comprar"

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando selecionar cor "vermelho"
E tamanho "m" 
E quantidade desejada "1"
Se o botão "comprar" estiver habilitado
Então  permite adicionar produto ao carrinho

Cenário: Produto indisponível
Quando selecionar cor "laranja"
E tamanho "m" 
E quantidade desejada "3"
Então deve exibir mensagem de "produto fora de estoque"

Cenário: Deve permitir apenas 10 produtos por venda 
Quando o cliente montar o carrinho 
E selecionar a quantidade 8 itens
Então permite adicionar itens ao carrinho 

Cenário: Quantidade de itens excedida
Quando o cliente montar o carrinho 
E selecionar a quantidade 13 itens
Então deve exibir um alerta "quantidade máxima permitida 10 itens"

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Quando configurado cor e tamanho do produto desejado
E clicar no botão limpar 
Então volta ao estado original 

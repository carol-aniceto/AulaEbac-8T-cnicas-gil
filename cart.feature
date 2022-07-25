#language: pt 

Funcionalidade: Página de produtos 

Contexto:
Dado que eu acesse a página de compras do produto escolhido 

Cenário: Deve adicionar produto ao carrinho
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

Cenário: Limpar seleção de produto
Quando configurado cor e tamanho do produto desejado
E clicar no botão limpar 
Então volta ao estado original 

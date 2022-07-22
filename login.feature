            #language: pt

            Funcionalidade: Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse o portal de autenticação EBAC

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve ser direcionado para tela de checkout

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando eu digitar o <usuario> inválido
            E a <senha>
            Então deve exibir <mensagem> de erro "usuário/ senha inválidos"

            Esquema do Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando eu digitar o <usuario>
            E a <senha> inválido
            Então deve exibir <mensagem> de erro "usuário/ senha inválidos"

            Exemplos:
            | usuario               | senha      |
            | "augusto@ebac.com.br" | "senha123" |
            | "maria@ebac.com.br"   | "entrar51" |
            | "natalia@ebac.com.br" | "ola54321" |
            | "jkrojdwk@ebac.com.br"| "teste@12" |
            | "julia.souza@ebac.com.br"| "dlkdjkfjhs3256265" |
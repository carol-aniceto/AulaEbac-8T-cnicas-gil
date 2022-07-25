            #language: pt

            Funcionalidade: Página de login

            Contexto:
            Dado que eu acesse o portal de autenticação EBAC

            Cenário: Realiza login com sucesso
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve ser direcionado para tela de checkout

            Cenário: Ao inserir usuário inválido deve exibir mensagem de alerta
            Quando eu digitar o <usuario> inválido
            E a <senha>
            Então deve exibir <mensagem> de erro "usuário inválidos"

            Esquema do Cenário: Ao inserir senha inválida deve exibir mensagem de alerta 
            Quando eu digitar o <usuario>
            E a <senha> inválido
            Então deve exibir <mensagem> de erro "senha inválida"

            Exemplos:
            | usuario               | senha      |
            | "augusto@ebac.com.br" | "senha123" |
            | "maria@ebac.com.br"   | "entrar51" |
            | "natalia@ebac.com.br" | "ola54321" |
            | "jkrojdwk@ebac.com.br"| "teste@12" |
            | "julia.souza@ebac.com.br"| "dlkdjkfjhs3256265" |
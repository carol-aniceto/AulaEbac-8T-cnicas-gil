            #language: pt

            Funcionalidade: Página de Cadastro 

            Contexto:
            Dado que eu realize autenticação no portal EBAC

            Esquema do Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando preencher os campos nome, sobrenome, país, cidade, endereço, cep, telefone, email
            Então deve realizar cadastro com sucesso

            Exemplos:

            | "nome"     | "sobrenome" | "país"   | "cidade"    | "endereço"    | "cep"      | "telefone"    | "email"                      |
            | "maria"    | "silva"     | "Brasil" | "Londrina"  | "Av Brasília" | "86025020" | "43996018379" | "maria.silva@ebac.com.br"    |
            | "leonardo" | "souza"     | "Brasil" | "São Paulo" | "Av Paulista" | "01311000" | "11999125003" | "leonardo.souza@ebac.com.br" |
            | "aline"    | "dias"      | "Brasil" | "Itajaí"    | "Av Central"  | "88306783" | "47999212133" | "aline.dias@ebac.com.br"     |
 
            Cenário: Ao inserir e-mail com formato válido, realiza cadastro
            Quando preeencher o campo email deve aceitar apenas formatos validados como "nomedeusuario@email.com" 
            Então realiza cadastro com sucesso 

            Cenário: Campo e-mail com formato inválido, deve exibir uma mensagem de erro
            Quando preeencher o campo email com "user.name.com.br" 
            Então deve apresentar mensagem de erro "Email com formato inválido"

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.   
            Quando preechido os campos de cadastro
            Se algum item permanecer em branco
            Então deve exibir mensagem "todos os campos marcados com asterisco são obrigatórios"                                         
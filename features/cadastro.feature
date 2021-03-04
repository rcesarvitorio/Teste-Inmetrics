#language: pt
@cadastro
Funcionalidade: Cadastro de funcionário
    Contexto:
        Dado que o usuário esteja na tela de cadastro.

    @sucesso
    Cenário: Cadastro com sucesso
        Cadastrando um usuário com sucesso
        
        Quando preencher os dados do usuário.
        Então retorna para tela de 'Login'.

    @sem_sucesso
    Esquema do Cenário: Cadastro sem sucesso
    
        Quando preencher <login>, <senha> e <confirmarsenha>
        Então receberá o alerta.

    Exemplos: 
    |   login     |   senha  |confirmarsenha |
    |"testeteste1"|   ""     |  "11223344"   | 
    |"testeteste1"|"11223344"|      ""       |
    |    ""       |"11223344"|  "11223344"   |

    @duplicado
    Cenário: Cadastro duplicado
        O usuário tenta fazer um cadastro, com o login já existente.
   
        Quando preencher os dados do usuário.
        Mas esse login já está cadastrado.
        Então retorna a mensagem "Usuário já cadastrado" 

    @senhas_diferentes
    Cenário: Senhas não conferem
        O usuário tenta fazer o cadastro e a senha não confere com a confirmação de senha.
    
        Quando preencher "testeteste1", "11223344" e "112233"
        Então retorna a mensagem "Senhas não combinam"
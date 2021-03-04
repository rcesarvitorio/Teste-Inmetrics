#language: pt
@login
Funcionalidade: Login

    Contexto: 
        Dado que o usuário esteja na tela de login.

    @login_sucesso
    Cenário: Login com sucesso
        
        Quando colocar "testeteste" e "11223344".
        Então o usuário estará logado e irá para página de funcionários.
    

    @login_invalido
    Esquema do Cenário: Login sem sucesso
        Cenários com usuário e senha errados.
        
        Quando colocar <login> e <senha>.
        Então verá a mensagem <mensagem>

    Exemplos:
        |    login      |  senha   |          mensagem                |
        |"testeteste"   | "112233" |"ERRO! Usuário ou Senha inválidos"|
        |"teste99887766"|"11223344"|"ERRO! Usuário ou Senha inválidos"|

    @login_em_branco
    Esquema do Cenário: Login sem sucesso
        Cenários com usuário ou senha com campos em branco.        
        
        Quando colocar <login> e <senha>.
        Então verá o alerta de campo obrigatório

    Exemplos:
        |    login      |  senha   |
        |     ""        |"11223344"|
        |"testeteste"   |   ""     |
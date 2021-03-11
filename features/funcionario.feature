#language:pt
@funcionario
Funcionalidade: Funcionários

Contexto: 
    Dado que o usuário esteja logado

    @cadastrar_func
    Cenário: Cadastrar funcionário
        
        Quando cadastrar um funcionário
        Então verá a mensagem 'SUCESSO! Usuário cadastrado com sucesso'.

    @editar_func
    Cenário: Editar funcionário
        
        Quando editar um funcionário
        Então verá a mensagem "SUCESSO! Informações atualizadas com sucesso".

    @deletar_func
    Cenário: Deletar funcionário
        
        Quando deletar um funcionário
        Então verá a mensagem "SUCESSO! Funcionário removido com sucesso".



    
       
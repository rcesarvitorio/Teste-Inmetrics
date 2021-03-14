require 'faker'
require 'pry'


class FuncionarioPage
    include Capybara::DSL
    include Dados
    def usuario_logado
        find('.nav-link', text: 'SAIR')
        find('#tabela')
    end

    def adicionar_funcionario        
        find('.nav-link', text: 'NOVO FUNCIONÁRIO').click
        find('#inputNome').set $nome 
        find('#inputCargo').set $job        
        find('#cpf').set $cpf                  
        find('#dinheiro').set $salario
        list = find('#slctSexo').all('option')        
        list.drop(1).sample.select_option        
        ctt = $contrato.sample
        choose(ctt)
        find('#inputAdmissao').set $admdata               
        find('.cadastrar-form-btn').click    
           
    end

    def editar_funcionario 
        adicionar_funcionario        
        find('input[type=search').set $cpf
        find('.btn-warning', match: :first).click
        job = Faker::Job.title
        salario = Faker::Number.number(digits: 6)
        find('#inputCargo').set job
        find('#dinheiro').set salario        
        find('.cadastrar-form-btn').click
    end

    def deletar_funcionario
        adicionar_funcionario
        find('input[type=search').set $cpf
        find('.fa-trash').click
    end
end



class FuncionarioPage
    include Capybara::DSL
    include Dados
    def usuario_logado
        find('.nav-link', text: 'SAIR')
        find('#tabela')
    end

    def adicionar_funcionario        
        find('.nav-link', text: 'NOVO FUNCIONÁRIO').click
        find('#inputNome').set @nome 
        find('#inputCargo').set @job        
        find('#cpf').set @cpf
        binding.pry            
        find('#dinheiro').set @salario
        drop = find('#slctSexo')
        drop.all('option').sample.select_option
        ctt = @contrato.sample
        choose(ctt)
        find('#inputAdmissao').set @admdata               
        find('.cadastrar-form-btn').click
    end
end



class FuncionarioPage
    include Capybara::DSL
    def usuario_logado
        find('.nav-link', text: 'SAIR')
        find('#tabela')
    end
end
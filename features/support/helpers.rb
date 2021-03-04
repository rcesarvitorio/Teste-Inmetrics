require 'faker'

module Dados    
    def gerar_dados
        @login = Faker::Internet.username(specifier: 8)
        @senha = Faker::Internet.password
        @confirmarsenha = @senha
    
    end
end

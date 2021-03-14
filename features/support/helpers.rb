require 'faker'
require 'cpf_faker'

module Dados    
    def gerar_dados
        $login = Faker::Internet.username(specifier: 8)
        $senha = Faker::Internet.password
        $confirmarsenha = $senha
        $nome = Faker::Name.first_name
        $job = 'Analista de Testes'        
        $cpf = Faker::CPF.pretty
        $contrato = ['CLT', 'PJ']
        $salario = Faker::Number.number(digits: 6)
        $admdata = "27/02/2021"    
    end
end

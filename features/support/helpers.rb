require 'faker'
require 'cpf_faker'

module Dados    
    def gerar_dados
        $login = Faker::Internet.username(specifier: 8)
        $senha = Faker::Internet.password
        $confirmarsenha = $senha
        $nome = Faker::Internet.username
        $job = Faker::Job.title
        $cpf = Faker::CPF.pretty
        $contrato = ['CLT', 'PJ']
        $salario = Faker::Number.number(digits: 4)
        $admdata = "27022021"    
    end
end

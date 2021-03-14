require 'pry'

class Alertas
    include Capybara::DSL
    def alerta_campo_obrigatorio
        alerta = find('.alert-validate')
        alerta.hover 
    end

    def alerta_de_erro(mensagem)       
        find('.text-center', text: mensagem).text
     end

    def alerta(mensagem)      
        binding.pry
        find('.alert-dismissible', text: mensagem).text
        
    end
end